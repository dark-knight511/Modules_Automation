provider "aws" {
  region = "us-east-1"
}

# VPC Resources
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name         = var.name_tags_VPC
    team         = var.team
    env          = var.env
    owner        = var.owner
    owneremail   = var.owneremail
    creationdate = var.creationdate
  }
}

resource "aws_subnet" "public_subnet" {
  for_each   = var.public_subnet_cidr
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = each.value

  tags = {
    Name         = "${var.name_tags_subnet} ${each.key}"
    team         = var.team
    env          = var.env
    owner        = var.owner
    owneremail   = var.owneremail
    creationdate = var.creationdate
  }
}

resource "aws_subnet" "private_subnet" {
  for_each   = var.private_subnet_cidr
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = each.value

  tags = {
    Name         = "${var.name_tags_subnet} ${each.key}"
    team         = var.team
    env          = var.env
    owner        = var.owner
    owneremail   = var.owneremail
    creationdate = var.creationdate
  }
}


