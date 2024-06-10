variable "cluster_identifier" {
  description = "The name of the Redshift cluster"
  type        = string
}

variable "node_type" {
  description = "The node type for the Redshift cluster"
  type        = string
  default     = "dc2.large"
}
variable "number_of_nodes" {
  description = "The number of compute nodes in the Redshift cluster"
  type        = number
  default     = 2
}

variable "master_username" {
  description = "The username for the master user"
  type        = string
}

variable "master_password" {
  description = "The password for the master user"
  type        = string
  sensitive   = true
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs"
  type        = list(string)
}

variable "cluster_subnet_group_name" {
  description = "The name of the cluster subnet group"
  type        = string
}
variable "name_tags" {
  description = "The name of the Redshift cluster"
  type        = map(string)
  default = {
    Environment  = "production"
    Team         = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }


}


