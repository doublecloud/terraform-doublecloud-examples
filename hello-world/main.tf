// initialize doublecloud provider
provider "doublecloud" {
  # See https://double.cloud/docs/en/public-api/tutorials/transfer-api-quickstart on how to obtain this file
  authorized_key = file(var.dc_key_path)
}

// VPC for Kafka and Clickhouse networks
resource "doublecloud_network" "main-network" {
  project_id      = var.project_id
  name            = "default-network"
  region_id       = var.region_id
  cloud_type      = var.cloud_type
  ipv4_cidr_block = "10.0.0.0/16"
}

variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project in which to create resources"
}

variable "region_id" {
  type        = string
  description = "In which region host default network"
  default     = "eu-central-1"
}

variable "cloud_type" {
  type        = string
  description = "On top of which cloud provider deploy default network"
  default     = "aws"
  validation {
    condition = contains(["aws", "gcp"], var.cloud_type)
  }
}

// Authorization in Double.Cloud work with key.json files, so we must specify were it located
variable "dc_key_path" {
  type        = string
  default     = "~/.config/auth_key.json"
  description = "Path to DC key"
}
