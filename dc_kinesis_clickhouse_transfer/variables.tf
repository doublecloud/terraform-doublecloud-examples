variable "stream_name" {
  description = "Your stream name"
  type        = string
  sensitive   = true
}

variable "aws_profile" {
  default = "default"
}

variable "federation_id" {
  type        = string
  description = "Federation ID to auth"
  default     = ""
}

variable "aws_region_id" {
  type        = string
  description = "ID of the AWS region in which to create resources"
  default     = "eu-central-1"
}

variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project in which to create resources"
}

variable "enable_transfer" {
  type        = bool
  default     = false
  description = "Create delivery from kafka to clickhouse via DoubleCloud.Transfer"
}

variable "aws_access_key_id" {
  type        = string
  default     = ""
  description = "AWS Secret Key with kinesis reader permissions"
}

variable "aws_secret_access_key" {
  type        = string
  default     = ""
  description = "AWS Secret Access Key with kinesis reader permissions"
}

variable "endpoint" {
  type        = string
  default     = ""
  description = "Doublecloud REST API endpoint"
}

variable "federation_endpoint" {
  type        = string
  default     = ""
  description = "Doublecloud gRPC API endpoint"
}