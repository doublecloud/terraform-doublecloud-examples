// Terraform settings
terraform {
  required_providers {
    doublecloud = {
      source  = "registry.terraform.io/doublecloud/doublecloud"
      version = ">= 0.1.6"
    }
  }
}

provider "doublecloud" {
  federation_id = var.federation_id
}
