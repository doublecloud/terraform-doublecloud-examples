// VPC for Kafka and Clickhouse networks
resource "doublecloud_network" "main-network" {
  project_id = var.dc_project_id
  name = "cdc-kafka-net"
  region_id = var.aws_region
  cloud_type = "aws"
  ipv4_cidr_block = "10.0.0.0/16"
}
