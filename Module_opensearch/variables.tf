variable "domain_name" {
  description = "The name of the OpenSearch Service domain"
  type        = string
}

variable "engine_version" {
  description = "The version of Elasticsearch or OpenSearch to use"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the OpenSearch cluster"
  type        = string
}

variable "instance_count" {
  description = "The number of instances in the OpenSearch cluster"
  type        = number
}

variable "ebs_enabled" {
  description = "Whether EBS volumes are enabled"
  type        = bool
}

variable "volume_type" {
  description = "The type of EBS volume"
  type        = string
}

variable "volume_size" {
  description = "The size of the EBS volume in GiB"
  type        = number
}

variable "access_policies" {
  description = "IAM policies specifying who can access the domain"
  type        = string
}

variable "region" {
  description = "The AWS region where the OpenSearch domain will be created"
  type        = string
  default     = "us-west-2"
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