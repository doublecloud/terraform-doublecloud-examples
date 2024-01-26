variable "project_id" {
  type        = string
  description = "ID of the DoubleCloud project in which to create resources"
}

variable "ipv4_cidr" {
  type        = string
  description = "CIDR of used vpc"
  default     = "10.0.0.0/16"
}

variable "region_id" {
  type        = string
  description = "In which region host default network"
}

// Authorization in Double.Cloud work with key.json files, so we must specify were it located
variable "dc_key_path" {
  type        = string
  default     = "~/.config/auth_key.json"
  description = "Path to DC key"
}


// This variable contains your IP address. This
// is used when setting up the SSH rule on the
// web security group
variable "my_ip" {
  description = "Your IP address"
  type        = string
  sensitive   = true
}
// This variable contains your IP address. This
// is used when setting up the SSH rule on the
// web security group
variable "my_ipv6" {
  description = "Your IPv6 address"
  type        = string
  sensitive   = true
}
