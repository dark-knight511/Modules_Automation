provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = var.name_tags
}

# Public Subnets
resource "aws_subnet" "public" {
  count = length(keys(var.public_subnet_cidr))

  vpc_id            = aws_vpc.main.id
  cidr_block        = values(var.public_subnet_cidr)[count.index]
  availability_zone = element(var.availability_zones, count.index)
  tags              = var.name_tags
}

# Private Subnets
resource "aws_subnet" "private" {
  count = length(keys(var.private_subnet_cidr))

  vpc_id            = aws_vpc.main.id
  cidr_block        = values(var.private_subnet_cidr)[count.index]
  availability_zone = element(var.availability_zones, count.index)

  tags = var.name_tags
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = var.name_tags
}

# Public Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = var.name_tags
}

# Private Route Tables
resource "aws_route_table" "private" {
  count  = length(keys(var.private_subnet_cidr))
  vpc_id = aws_vpc.main.id

  tags = var.name_tags
}

# Associate Public Subnets with Public Route Table
resource "aws_route_table_association" "public" {
  count          = length(keys(var.public_subnet_cidr))
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

# Associate Private Subnets with Private Route Tables
resource "aws_route_table_association" "private" {
  count          = length(keys(var.private_subnet_cidr))
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private[count.index].id
}
