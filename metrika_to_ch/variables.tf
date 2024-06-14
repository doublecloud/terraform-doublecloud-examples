// This variable contains your IP address. This
// is used when setting up the Access Rule on the
// clusters security group
variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true
}

// This variable contains your IP6 address. This
// is used when setting up the Access Rule on the
// clusters security group
variable "my_ipv6" {
  description = "Your IPv6 address"
  type        = string
  sensitive   = true
}

// This example host infra on top of AWS cloud provider, so we must choose AWS region
variable "region_id" {
  type        = string
  description = "ID of the AWS region in which to create resources"
  default     = "eu-central-1"
}

// You can see this project_id on https://app.double.cloud/project-settings page
variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project in which to create resources"
}

// Authorization in Double.Cloud work with federation ID
variable "federation_id" {
  type        = string
  description = "Federation ID to auth"
}

// Will create a transfer between metrika and clickhouse
variable "enable_transfer" {
  type        = bool
  default     = false
  description = "Create delivery from metrika to clickhouse via DoubleCloud.Transfer"
}

// Will create dashboard for metrika data
variable "enable_visualization" {
  type        = bool
  default     = false
  description = "Create sample visualization dashboard for metrika"
}

// Metrika counter IDs
variable "metrika_counter_ids" {
  type        = list(number)
  description = "Metrika counter IDs to construct the source"
}

// Metrika token for authorization
// see here: https://oauth.yandex.com/authorize?response_type=token&client_id=36b7fc9aa96c4fa09158bcacbbdc796a
variable "metrika_token" {
  type        = string
  description = "Metrika token to construct the source"
}
