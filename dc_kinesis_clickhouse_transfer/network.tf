// VPC for Kinesis and Clickhouse networks
resource "doublecloud_network" "main-network" {
  project_id      = var.project_id
  name            = "clickstream-network"
  region_id       = var.aws_region_id
  cloud_type      = "aws"
  ipv4_cidr_block = "10.0.0.0/16"
}
