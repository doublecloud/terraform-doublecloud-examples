terraform {
  required_version = ">= 1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.51.0"
    }
    time = {
      source = "hashicorp/time"
    }
    doublecloud = {
      source  = "registry.terraform.io/doublecloud/doublecloud"
      version = ">= 0.1.6"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.region_id
  default_tags {
    tags = {
      Name  = "byoc_existing_vpc"
      Infra = "double_cloud_examples"
    }
  }
}
