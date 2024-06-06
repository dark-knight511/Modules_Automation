variable "domain_name" {
  description = "Name of the OpenSearch domain"
  default     = "my-opensearch-domain"
}

variable "engine_version" {
  description = "OpenSearch engine version"
  default     = "OpenSearch_1.3"
}

variable "instance_type" {
  description = "Instance type for OpenSearch data nodes"
  default     = "r6g.large.search"
}

variable "instance_count" {
  description = "Number of data nodes in the cluster"
  default     = 3
}

variable "ebs_volume_size" {
  description = "EBS volume size (in GB) for data nodes"
  default     = 10
}

variable "search_name_tags" {
  description = "Tags to apply to the OpenSearch domain"
  type = map(string)
  
  default = {
    Name  = "open_search"
    Environment = "production"
    Team        = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
  
}
