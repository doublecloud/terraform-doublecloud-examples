variable "aws_region" {
  description = "Region for AWS resources."

  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  description = "Profile for AWS resources."

  type    = string
  default = "default"
}

variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project to create resources in"
}

variable "federation_id" {
  type        = string
  description = "Federation ID for auth"
}

variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true
}

variable "my_ipv6" {
  description = "Your IPv6 address"
  type        = string
  sensitive   = true
}
