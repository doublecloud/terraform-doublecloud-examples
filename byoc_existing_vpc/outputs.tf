output "byoc" {
  value = module.dc_byoc
}

output "subnets" {
  value = [
    for subnet in aws_subnet.byoc : {
      az        = subnet.availability_zone_id
      id        = subnet.id
      ipv4_cidr = subnet.cidr_block
      ipv6_cidr = subnet.ipv6_cidr_block
    }
  ]
}

output "igw" {
  value = aws_internet_gateway.byoc.id
}
