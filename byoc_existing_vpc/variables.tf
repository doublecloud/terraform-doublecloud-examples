variable "ipv4_cidr" {
  type        = string
  description = "CIDR of a used vpc"
  default     = "10.0.0.0/16"
}

variable "region_id" {
  type        = string
  description = "ID of the region in which to create resources"
  default     = "us-east-2"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones where create subnets"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "AWS profile will be used to authenticate"
}
