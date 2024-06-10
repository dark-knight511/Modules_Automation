variable "zone_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "zone_comment" {
  description = "A comment for the hosted zone"
  type        = string
  default     = null
}

variable "zone_delegation_set_id" {
  description = "The ID of the reusable delegation set to associate with this hosted zone"
  type        = string
  default     = null
}



variable "record_name" {
  description = "The name of the record set"
  type        = string
}

variable "record_type" {
  description = "The DNS record type (e.g., A, AAAA, CNAME)"
  type        = string
}

variable "record_ttl" {
  description = "The time-to-live for the record"
  type        = number
  default     = 300
}

variable "record_values" {
  description = "A list of resource records"
  type        = list(string)
  default     = []
}

variable "alias_name" {
  description = "The name for the alias record"
  type        = string
  default     = null
}

variable "alias_zone_id" {
  description = "The zone ID for the alias record"
  type        = string
  default     = null
}

variable "alias_evaluate_target_health" {
  description = "Whether to evaluate the health of the alias target"
  type        = bool
  default     = false
}

variable "name_tags" {
  description = "Tags to apply to the Secrets Manager secret"
  type        = map(string)
  default = {
    Environment = "production"
    Team        = "devops"
    owner        = "owner"
    owneremail   = "owneremail"
    creationdate = "06-05-2023"
  }
}