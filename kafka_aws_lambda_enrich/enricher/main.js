const https = require('https');

module.exports.handler = async (event, context, callback) => {
    console.log('Event', event);

    let req = JSON.parse(event.body)
    let ip = await fetchIP()
    console.log('req', req);
    console.log('ip', ip)
    if (!req) {
        callback(null, {
            Records: [
                {
                    cdc: exampleEvent(event.body, ip),
                    result: 'Ok'
                }
            ]
        })
    }

    callback(null, {
        Records: req.Records.map(record => {
            return {
                eventID: record.eventID,
                invokeIdentityArn: record.invokeIdentityArn,
                eventVersion: record.eventVersion,
                eventName: record.eventName,
                eventSourceARN: record.eventSourceARN,
                cdc_split: processRecords(record.cdc, ip),
                result: 'Split'
            }
        }),
    })
}

function processRecords(record, ip) {
    let rawMessage = record.columnvalues[6]
    // Split the raw message into rows and process them one by one
    return rawMessage.split('\n').filter(str => str).map(row => {
        let event = exampleEvent('')
        // Split the rows by \n
        // The result looks similar to `ts=2024-06-20T21:06:48Z&ip=FILL_ME&data={"appid":"rand_id_1","payload":{"EMAIL":"1@gmail.com","MOBILE":"0"},"identity":"1@gmail.com"}`
        // Extract values from it using `URLSearchParams`
        let params = new URLSearchParams(row)

        let data = JSON.parse(params.get("data"))
        event.columnvalues[0] = params.get("ts")
        event.columnvalues[1] = ip // Value fetched from an external resource
        if (data) {
            event.columnvalues[2] = data.payload
            event.columnvalues[3] = data.appid // Extract the child property
            event.columnvalues[4] = data.identity
        }
        event.commitTime = record.commitTime
        return event
    })
}

function exampleEvent(data, ip) {
    return {
        "commitTime":1718876759101000000, // Event time
        "kind":"insert", // Event type
        "table":"source-topic", // Target table name
        "columnnames":[ // List of columns
            "ts",
            "ip",
            "data",
            "appid",
            "identity",
        ],
        "columnvalues":[ // List of column values
            (new Date()).toISOString(),
            JSON.stringify(ip),
            data,
            null,
            null,
        ],
        "table_schema":[ // Resulted schema
            {
                "name":"ts",       // Column name
                "type":"datetime", // Column type
                "key":true,
                "required":true
            },
            {
                "name":"ip",
                "type":"utf8"
            },
            {
                "name":"data",
                "type":"any"
            },
            {
                "name":"appid",
                "type":"utf8"
            },
            {
                "name":"identity",
                "type":"utf8"
            }
        ]
    }
}


function fetchIP() {
    const url = 'https://ifconfig.me/ip';
    return new Promise((resolve, reject) => {
        const req = https.get(url, res => {
            let rawData = '';

            res.on('data', chunk => {
                rawData += chunk;
            });

            res.on('end', () => {
                try {
                    resolve(rawData);
                } catch (err) {
                    reject(new Error(err));
                }
            });
        });

        req.on('error', err => {
            reject(new Error(err));
        });
    });
}
