resource "aws_vpc" "byoc" {
  assign_generated_ipv6_cidr_block = true
  enable_dns_hostnames             = true
  enable_dns_support               = true
  cidr_block                       = var.ipv4_cidr
}

resource "aws_subnet" "byoc" {
  count = length(var.azs)

  vpc_id            = aws_vpc.byoc.id
  availability_zone = var.azs[count.index]

  cidr_block      = cidrsubnet(aws_vpc.byoc.cidr_block, 2, count.index)
  ipv6_cidr_block = cidrsubnet(aws_vpc.byoc.ipv6_cidr_block, 8, count.index)

  assign_ipv6_address_on_creation = true
  map_public_ip_on_launch         = true
}

resource "aws_internet_gateway" "byoc" {
  vpc_id = aws_vpc.byoc.id
}

resource "aws_route" "igw_v4" {
  route_table_id         = aws_vpc.byoc.default_route_table_id
  gateway_id             = aws_internet_gateway.byoc.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route" "igw_v6" {
  route_table_id              = aws_vpc.byoc.default_route_table_id
  gateway_id                  = aws_internet_gateway.byoc.id
  destination_ipv6_cidr_block = "::/0"
}

module "dc_byoc" {
  source = "doublecloud/doublecloud-byoc/aws"

  ipv4_cidr = var.ipv4_cidr
}

import {
  id = aws_vpc.byoc.id
  to = module.dc_byoc.aws_vpc.doublecloud
}
