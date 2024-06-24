variable "domain_name" {
  description = "The name of the OpenSearch Service domain"
  type        = string
  default     = "example-domain"
}

variable "engine_version" {
  description = "The version of Elasticsearch or OpenSearch to use"
  type        = string
  default     = "OpenSearch_1.0"
}

variable "instance_type" {
  description = "The instance type for the OpenSearch cluster"
  type        = string
  default     = "t3.medium.search"
}

variable "instance_count" {
  description = "The number of instances in the OpenSearch cluster"
  type        = number
  default     = 2
}

variable "ebs_enabled" {
  description = "Whether EBS volumes are enabled"
  type        = bool
  default     = true
}

variable "volume_type" {
  description = "The type of EBS volume"
  type        = string
  default     = "gp2"
}

variable "volume_size" {
  description = "The size of the EBS volume in GiB"
  type        = number
  default     = 10
}

variable "access_policies" {
  description = "IAM policies specifying who can access the domain"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "es:*",
      "Resource": "*"
    }
  ]
}
EOF
}

variable "region" {
  description = "The AWS region where the OpenSearch domain will be created"
  type        = string
  default     = "us-east-1"
}

variable "name_tags" {
  description = "Tags to be applied on the naming of the Config"
  type        = map(string)
  default = {
    Name         = "my-config"
    env          = "dev"
    team         = "devops"
    owner        = "owner name"
    owneremail   = "owner@mail.com"
    creationdate = "06-06-2024"
  }
}
