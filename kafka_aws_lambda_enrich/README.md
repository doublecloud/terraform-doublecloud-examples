### Kafka Data Enrichment

In this example we will enrich data inside kafka topic with Lambda-function call.


## Project Structure

### 1. `aws_infra.tf`

This file manages the existing AWS infrastructure. 
For AWS Infra we require one lambda function to handle our actual data transformation and enrichment.

### 2. `dc_infra.tf`

This file manages the existing DoubleCloud infrastructure.
In DoubleCloud we create kafka cluster in double-cloud managed VPC and transfer that reads data from this cluster and write them back after lambda transformation.

### 3. `encricher/main.js`

Implementation of cloud transformation function in JS. This function emulate real-world use case. 
It parse, split and enrich output data.

### 4. `producer/main.go`

Simple producer app, that generates semi-structured data into kafka. This data is need advanced processing, which handles by enricher cloud function.

## Architecture

![architectures.png](./assets/architectures.png)

There is a transfer between kafka <> kafka, this transfer fetch from one topic and write to another one.

Between them there is a lambda function that split, parse and enrich data in between.

Lambda function written in JS, see `encircher`-folder.

Transfer use kinesis-like message processing.

## Data Transformation Flow

When you enable cloud-function data transformation, DC.Transfer buffers incoming data. The buffering size is configurable, default buffering size hint is 1 MB. The Lambda buffering interval hint ranges between 0 and 900 seconds. The default Lambda buffering interval 1 sec.
DC.Transfer then invokes the specified cloud function asynchronously. The transformed data is sent from Lambda to DC.Transfer. DC.Transfer parse output and then sends it to the destination.

### Important

The Lambda synchronous invocation mode has a payload size limit of 6 MB for both the request and the response. Make sure that your buffering size for sending the request to the function is less than or equal to 6 MB. Also ensure that the response that your function returns doesn't exceed 6 MB.

### Data Transformation and Status Model

All transformed records from Lambda must contain the following parameters, or Amazon Data Firehose rejects them and treats that as a data transformation failure.

Each batch of messages encoded as:

```json
{
  "Records": [
    {
      "cdc": {
        "commitTime":1718876759101000000, // Time of change, unix-nano seconds
        "kind":"insert",                  // Kind of change, can be insert / update / delete
        "schema":"",                      // Name of resulted schema
        "table":"table_name",             // Name of resulted table
        "columnnames":[],                 // List of columns, should be in same order as columnvalues
        "columnvalues":[],                // List of column values
        "table_schema":[                  // Resulted schema
          {
            "name":"ts",                  // name of column
            "type":"datetime",            // type of column
            "key":true,                   // is column primary-key
            "required":true               // is column required
          }
        ]
      }
    }
  ]
}
```

Inside `cdc` field there is DC-`event`.

For each record important fields:

**commitTime**:  Time of change, unix-nano seconds, it's a physical time of event, usually shall not be changed

**kind**:  Kind of change, can be `insert` / `update` / `delete`. For inserts and deletes you also must provide `oldkeys`

**table**: Name of target table

**schema**: Name of target `db` / `schema` / `namespace`

**columnnames**: List of column names that presented in change-items

**columnvalues**: List of column values that contains in resulted event.

**table_schema**: List of result table columns.


### Result Handling

Semantic of lambda call invocation should be strict, on each record sended to lambda we shall return exactly on result.


**result**:
The status of the data transformation of the record.

The possible values are:
- `Ok` - the record was transformed successfully
- `Dropped` - the record was dropped intentionally by your processing logic
- `ProcessingFailed` - the record could not be transformed
- `Split` - the record multiplied

If a record has a status of Ok or Dropped or Split, DC.Transfer considers it successfully processed.
Otherwise, it unsuccessfully processed.

If result is `Ok` - function should return in result record with `cdc` field.
If result is `Split` - function should return in result record with `cdc_splitted` field, which is a list of DC `event`-s.


## Getting Started

1. **Prerequisites:** Ensure you have Terraform installed.
2. **Clone the Repository:** Clone this repository to your local environment.
3. **AWS Credentials:** Set up AWS credentials (`default` profile).
4. **Double Cloud Credentials:** Set up Double Cloud credentails, see [this]( https://double.cloud/docs/en/public-api/tutorials/transfer-api-quickstart) link for details.
4. **Prepare Variables:** Prepare variables in the `env.tfvars` files as needed, or path them from CLI-arguments.
5. **Terraform Apply:** Run `terraform init` followed by `terraform apply` to provision the infrastructure.

Example run configuration
```shell
 terraform apply \
  -var="my_ip=$(curl -4 ifconfig.me)" \                                                                                          
  -var="my_ipv6=$(curl -6 ifconfig.me)" \
  -var="project_id=YOUR_DC_PROJECT_ID" \
  -var="federation_id=YOUR_FEDERATION_ID"
```

## Demo

There is an example of producer.kafka file that utilized VS Code kafka [toolkit](https://marketplace.visualstudio.com/items?itemName=jeppeandersen.vscode-kafka)

```shell
PRODUCER non-keyed-json-message
topic: source-topic
ts={{time.recent}}&ip=FILL_ME&useragent={{internet.userAgent}}&data={"appid":"rand_id_{{random.number}}","payload":{"EMAIL":"{{internet.email}}","MOBILE":"{{phone.phoneNumberFormat}}"},"identity":"{{internet.exampleEmail}}"}
```

Produce a message with random generated content.
Enricher will parse it and enrich with current lambda public ipv4 into:

```json
{"appid":"rand_id_27212","data":{"EMAIL":"Laisha28@yahoo.com","MOBILE":"366-380-1466"},"identity":"Lucas_Dickinson@example.com","ip":"44.201.33.239","ts":"1722183591238"}
```

To run consumer you can run:

```shell
CONSUMER consumer-group-id
topic: target-topic
partitions: 0
from: latest
```

## Notes

- Ensure you review and modify variables, such as region-specific configurations or security settings, before applying the Terraform configurations.
- Double-check the IAM roles and permissions for AWS and DoubleCloud resources to ensure smooth connectivity and data transfer.
- For any issues or additional configurations needed, refer to the respective Terraform file and adjust accordingly.
- To debug cloud function utilize logs from double-cloud transfer and AWS Lambda
- To ensure that data processed correctly use `Test` button on Source Endpoint or resulting Transfer 

---

Feel free to adjust the sections, descriptions, and images as needed to accurately represent your project structure and integration process!

