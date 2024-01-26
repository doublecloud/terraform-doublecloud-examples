# Example terraform to create a ClickHouse and Apache Kafka in BYOC

The example in this directory illustrates how to create ClickHouse inside customer AWS Account

![byoc_ch_peering.drawio.png](../assets/byoc_ch_peering.drawio.png)

Before running `terraform apply`, replace the variables and values in the Terraform files with the appropriate ones to enable access to databases in your environment.

For download all providers and modules run `terraform init`.

## Contents

### `versions.tf`

Contains definition of the DoubleCloud public Terraform provider and the following important block:

The `authorized_key.json` is an authentication file required to use a service account. See [DoubleCloud documentation](https://double.cloud/docs/en/public-api/tutorials/transfer-api-quickstart) for the instructions on how to obtain this file.

### `variables.tf`

Contains several Terraform variables. See their descriptions and usage for details.

### `main.tf`

Contains definitions of three resources:

* `"doublecloud_network" "aws"` is the doublecloud network
* `"doublecloud_clickhouse_cluster" "alpha-clickhouse"` is the main ClickHouse cluster 
* `"doublecloud_kafka_cluster" "alpha-kafka"` is the Kafka which connected to ClickHouse through `config.kafka` block


Example run configuration
```shell
terraform apply \
  -var="aws_profile=default" \
  -var="peered_ipv4_cidr_block=172.31.0.0/16" \
  -var="project_id=MY_PROJECT"
```

## Notes

- Ensure you review and modify variables, such as region-specific configurations or security settings, before applying the Terraform configurations.
- Double-check the IAM roles and permissions for AWS and DoubleCloud resources to ensure smooth connectivity and data transfer.
- For any issues or additional configurations needed, refer to the respective Terraform file and adjust accordingly.

---

Feel free to adjust the sections, descriptions, and images as needed to accurately represent your project structure and integration process!
