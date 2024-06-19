variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = map(string)
  default = {
    "public 1" = "10.0.1.0/24"
    "public 2" = "10.0.2.0/24"
  }
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = map(string)
  default = {
    "private 1" = "10.0.3.0/24"
    "private 2" = "10.0.4.0/24"
  }
}

variable "name_tags_vpc" {
  description = "Name tag for the VPC"
  type        = string
  default     = "aws_vpc"
}

variable "name_tags_subnet" {
  description = "Name tag for the subnets"
  type        = string
  default     = "aws_subnet"
}


variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "name_tags" {
  description = "Tags to apply to the Secrets Manager secret"
  type        = map(string)
  default = {
    Environment  = "production"
    Team         = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
}


