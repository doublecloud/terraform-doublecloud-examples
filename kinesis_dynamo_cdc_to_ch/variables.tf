variable "aws_region" {
  default = "eu-west-2" // london
}

variable "aws_profile" {
  default = "default"
}

// Authorization in Double.Cloud work with federation ID
variable "federation_id" {
  type        = string
  description = "Federation ID to auth"
}

variable "project_id" {
  type        = string
  description = "ID of double cloud project"
}

variable "cluster_id" {
  type        = string
  default     = ""
  description = "ID of target Double Cloud Clickhouse cluster"
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
