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
  description = "CIDR block for private subnet"
  type        = map(string)
  default = {
    "private 1" = "10.0.3.0/24"
    "private 2" = "10.0.4.0/24"
  }

}
variable "name_tags_VPC" {
  description = "name tags for different"
  type        = string
  default     = "aws_vpc"

}

variable "name_tags_subnet" {
  description = "name tags for different"
  type        = string
  default     = "aws_subnet"

}

variable "team" {
  description = "Team name"
  type        = string
  default     = "org_team"
}

variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "owner_name"
}

variable "owneremail" {
  description = "Resource owner email"
  type        = string
  default     = "owner@gmail.com"
}

variable "creationdate" {
  description = "Resource creation date"
  type        = string
  default     = "06-05-2024"
}



# Todo: for  vs for_each in terraform