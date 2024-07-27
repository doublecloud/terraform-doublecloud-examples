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
