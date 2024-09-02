terraform {
  required_providers {
    doublecloud = {
      source  = "registry.terraform.io/doublecloud/doublecloud"
      version = ">= 0.1.6"
    }
  }
  required_version = "1.5.7"
}

provider "doublecloud" {
  endpoint            = var.endpoint
  federation_endpoint = var.federation_endpoint
  federation_id       = var.federation_id
}

provider "aws" {
  region  = var.aws_region_id
  profile = var.aws_profile
}