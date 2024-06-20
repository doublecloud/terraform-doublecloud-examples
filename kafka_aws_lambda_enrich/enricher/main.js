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
            console.log('record ip', ip)
            return {
                eventID: record.eventID,
                invokeIdentityArn: record.invokeIdentityArn,
                eventVersion: record.eventVersion,
                eventName: record.eventName,
                eventSourceARN: record.eventSourceARN,
                cdc: processRecord(record.cdc, ip),
                result: 'Ok'
            }
        }),
    })
}

function processRecord(record) {
    return exampleEvent(record.columnvalues[4])
}

function exampleEvent(data, ip) {
    return {
        "commitTime":1718876759101000000, // Time of change
        "kind":"insert", // Kind of change
        "table":"source-topic", // Name of resulted table
        "columnnames":[ // List of columns
            "ts",
            "ip",
            "data"
        ],
        "columnvalues":[ // List of column values
            (new Date()).toISOString(),
            JSON.stringify(ip),
            data
        ],
        "table_schema":[ // Resulted schema
            {
                "name":"ts",       // name of column
                "type":"datetime", // type of column
                "key":true,
                "required":true
            },
            {
                "name":"ip",
                "type":"utf8"
            },
            {
                "name":"data",
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
