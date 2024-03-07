// Create a VPC named "cdc_vpc"
resource "aws_vpc" "cdc_vpc" {
  // Here we are setting the CIDR block of the VPC
  // to the "vpc_cidr_block" variable
  cidr_block = var.vpc_cidr_block
  // We want DNS hostnames enabled for this VPC
  enable_dns_hostnames = true
  enable_dns_support   = true

  // We are tagging the VPC with the name "cdc_vpc"
  tags = {
    Name = "cdc_vpc"
  }
}

// Create a group of public subnets based on the variable subnet_count.public
resource "aws_subnet" "cdc_public_subnet" {
  // count is the number of resources we want to create
  // here we are referencing the subnet_count.public variable which
  // current assigned to 1 so only 1 public subnet will be created
  count = var.subnet_count.public

  // Put the subnet into the "cdc_vpc" VPC
  vpc_id = aws_vpc.cdc_vpc.id


  // We are grabbing a CIDR block from the "public_subnet_cidr_blocks" variable
  // since it is a list, we need to grab the element based on count,
  // since count is 1, we will be grabbing the first cidr block
  // which is going to be 10.0.1.0/24
  cidr_block = var.public_subnet_cidr_blocks[count.index]

  // We are grabbing the availability zone from the data object we created earlier
  // Since this is a list, we are grabbing the name of the element based on count,
  // so since count is 1, and our region is us-east-2, this should grab us-east-2a
  availability_zone = data.aws_availability_zones.available.names[count.index]

  map_public_ip_on_launch = true

  // We are tagging the subnet with a name of "cdc_public_subnet_" and
  // suffixed with the count
  tags = {
    Name = "cdc_public_subnet_${count.index}"
  }
}

resource "aws_internet_gateway" "igw" { vpc_id = aws_vpc.cdc_vpc.id }

// Create a public route table named "cdc_public_rt"
resource "aws_route_table" "cdc_public_rt" {
  // Put the route table in the "cdc_vpc" VPC
  vpc_id = aws_vpc.cdc_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

// Here we are going to add the public subnets to the
// "cdc_public_rt" route table
resource "aws_route_table_association" "public" {
  // count is the number of subnets we want to associate with
  // this route table. We are using the subnet_count.public variable
  // which is currently 1, so we will be adding the 1 public subnet
  count = var.subnet_count.public

  // Here we are making sure that the route table is
  // "cdc_public_rt" from above
  route_table_id = aws_route_table.cdc_public_rt.id

  // This is the subnet ID. Since the "cdc_public_subnet" is a
  // list of the public subnets, we need to use count to grab the
  // subnet element and then grab the id of that subnet
  subnet_id = aws_subnet.cdc_public_subnet[count.index].id
}

// Create a db subnet group named "cdc_db_subnet_group"
resource "aws_db_subnet_group" "cdc_db_subnet_group" {
  // The name and description of the db subnet group
  name        = "cdc_db_subnet_group"
  description = "DB subnet group for tutorial"

  // Since the db subnet group requires 2 or more subnets, we are going to
  // loop through our private subnets in "cdc_private_subnet" and
  // add them to this db subnet group
  subnet_ids = [for subnet in aws_subnet.cdc_public_subnet : subnet.id]
}

// Create a security group for the RDS instances called "cdc_db_sg"
resource "aws_security_group" "cdc_db_sg" {
  name        = "cdc-postgres-sg"
  description = "Security group for tutorial databases"
  vpc_id = aws_vpc.cdc_vpc.id

  // To enable access to this database from DC Serverless runtime
  ingress {
    description = "Allow Postgresql traffic from DoubleCloud Transfer"
    from_port   = "5432"
    to_port     = "5432"
    protocol    = "tcp"
    cidr_blocks = [
      // list of IP-s which used by transfer, see here: https://double.cloud/docs/en/transfers/transfer-faq#list-of-allowed-ip
      "3.77.1.232/32",
      "3.74.181.206/32",
      "3.78.156.2/32",
      "3.77.29.32/32",
      "3.125.212.122/32",
    ]
  }

  ingress {
    description = "Allow Postgresql traffic from local machine"
    from_port   = "5432"
    to_port     = "5432"
    protocol    = "tcp"
    cidr_blocks = [
      // My local IP-address
      "${var.my_ip}/32",
    ]
  }

  // Here we are tagging the SG with the name "cdc_db_sg"
  tags = {
    Name = "cdc_db_sg"
  }
}

// Create a DB instance called "cdc_database"
resource "aws_db_instance" "cdc_database" {
  allocated_storage = var.settings.database.allocated_storage
  engine = var.settings.database.engine
  engine_version = var.settings.database.engine_version
  instance_class = var.settings.database.instance_class
  db_name = var.settings.database.db_name
  identifier = var.settings.database.identifier
  username = var.db_username
  password = var.db_password
  db_subnet_group_name = aws_db_subnet_group.cdc_db_subnet_group.id
  vpc_security_group_ids = [aws_security_group.cdc_db_sg.id]
  skip_final_snapshot = var.settings.database.skip_final_snapshot
  publicly_accessible = true
  parameter_group_name = aws_db_parameter_group.cdc-settings.name
}

resource "aws_db_parameter_group" "cdc-settings" {
  name   = "cdc-demo-settings"
  family = "postgres15"

  parameter {
    name         = "rds.logical_replication"
    value        = "1"
    apply_method = "pending-reboot"
  }
}
