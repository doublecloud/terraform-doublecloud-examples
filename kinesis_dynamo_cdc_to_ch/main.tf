// Here is where we are defining
// our Terraform settings
terraform {
  required_providers {
    // The only required provider we need
    // is aws, and we want version 4.0.0
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
    time = {
      source = "hashicorp/time"
    }
    doublecloud = {
      source  = "registry.terraform.io/doublecloud/doublecloud"
      version = ">= 0.1.6"
    }
  }

  // This is the required version of Terraform
  required_version = "1.5.6"
}

// Here we are configuring our aws provider.
// We are setting the region to the region of
// our variable "aws_region"
provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

provider "doublecloud" {
  federation_id = var.federation_id
}
