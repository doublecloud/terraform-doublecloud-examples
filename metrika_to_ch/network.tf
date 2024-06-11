// VPC for Clickhouse network
resource "doublecloud_network" "main-network" {
  project_id = var.project_id
  name = "metrika-network"
  region_id = var.region_id
  cloud_type = "aws"
  ipv4_cidr_block = "10.0.0.0/16"
}
