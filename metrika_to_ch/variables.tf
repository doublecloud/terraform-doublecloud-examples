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

// This example deploys resources in AWS
variable "region_id" {
  type        = string
  description = "ID of the AWS region to create resources in"
  default     = "eu-central-1"
}

// You can find the project ID at https://app.double.cloud/project-settings
variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project to create resources in"
}

// Authorization in DoubleCloud work with federation ID
variable "federation_id" {
  type        = string
  description = "Federation ID for auth"
}

// Creates a transfer between Yandex Metrica and ClickHouse
variable "enable_transfer" {
  type        = bool
  default     = false
  description = "Create a data transfer pipeline from Metrica to the ClickHouse cluster with DoubleCloud Transfer"
}

// Creates a dashboard for the Metrica data
variable "enable_visualization" {
  type        = bool
  default     = false
  description = "Create a sample visualization connection for Metrica"
}

// Creates a dashboard for the Metrica data
variable "enable_visualization_datasets" {
  type        = bool
  default     = false
  description = "Create sample visualization datasets for Metrica"
}

// Creates a dashboard for the Metrica data
variable "enable_visualization_charts" {
  type        = bool
  default     = false
  description = "Create sample visualization charts for Metrica"
}

// Creates a dashboard for the Metrica data
variable "enable_visualization_dashboards" {
  type        = bool
  default     = false
  description = "Create a sample visualization dashboard for Metrica"
}

// Metrica counter IDs
variable "metrica_counter_ids" {
  type        = list(number)
  description = "Metrica counter IDs for the source endpoint"
}

// Metrica token for authorization
// You can get a token at https://oauth.yandex.com/authorize?response_type=token&client_id=36b7fc9aa96c4fa09158bcacbbdc796a
variable "metrica_token" {
  type        = string
  description = "Metrica token for the source endpoint"
}
