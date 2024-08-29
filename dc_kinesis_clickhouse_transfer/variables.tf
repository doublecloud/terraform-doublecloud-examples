variable "stream_name" {
  description = "Your stream name"
  type        = string
  sensitive   = true
}

variable "aws_profile" {
  description = "AWS Profile"
  type        = string
  default     = "default"
}

variable "federation_id" {
  description = "Federation ID to auth"
  type        = string
  default     = ""
}

variable "aws_region_id" {
  description = "ID of the AWS region in which to create resources"
  type        = string
  default     = "eu-central-1"
}

variable "project_id" {
  description = "ID of the DoubleCloud project in which to create resources"
  type        = string
  default     = ""
}

variable "enable_transfer" {
  description = "Create delivery from Kinesis to clickhouse via DoubleCloud.Transfer"
  type        = bool
  default     = false
}

variable "aws_access_key_id" {
  description = "AWS Secret Key with kinesis reader permissions"
  type        = string
  default     = ""
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key with kinesis reader permissions"
  type        = string
  default     = ""
}

variable "endpoint" {
  description = "Doublecloud REST API endpoint"
  type        = string
  default     = ""
}

variable "federation_endpoint" {
  description = "Doublecloud gRPC API endpoint"
  type        = string
  default     = ""
}