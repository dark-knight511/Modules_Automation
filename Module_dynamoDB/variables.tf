variable "table_name" {
  description = "The name of the DynamoDB table."
  type        = string
  default     = "GameScores"
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table."
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The primary key hash attribute name."
  type        = string
  default     = "UserId"
}

variable "range_key" {
  description = "The primary key range attribute name."
  type        = string
  default     = "GameTitle"
}

variable "attributes" {
  description = "The attributes for the DynamoDB table."
  type = list(object({
    name = string
    type = string
  }))
  default = [
    { name = "UserId", type = "S" },
    { name = "GameTitle", type = "S" },
    { name = "TopScore", type = "N" }
  ]
}

variable "ttl_attribute_name" {
  description = "The TTL attribute name."
  type        = string
  default     = "TimeToExist"
}

variable "ttl_enabled" {
  description = "Enable or disable TTL."
  type        = bool
  default     = false
}

variable "gsi_name" {
  description = "The name of the global secondary index."
  type        = string
  default     = "GameTitleIndex"
}

variable "gsi_hash_key" {
  description = "The hash key of the global secondary index."
  type        = string
  default     = "GameTitle"
}

variable "gsi_range_key" {
  description = "The range key of the global secondary index."
  type        = string
  default     = "TopScore"
}

variable "gsi_projection_type" {
  description = "The projection type for the global secondary index."
  type        = string
  default     = "INCLUDE"
}

variable "gsi_non_key_attributes" {
  description = "The non-key attributes to project into the global secondary index."
  type        = list(string)
  default     = ["UserId"]
}

variable "name_tags" {
  description = "Tags to be applied on the naming of the Config"
  type        = map(string)
  default = {
    Name         = "my-dynamodb"
    env          = "dev"
    team         = "devops"
    owner        = "owner name"
    owneremail   = "owner@mail.com"
    creationdate = "06-06-2024"
  }
}
