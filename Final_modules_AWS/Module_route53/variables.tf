variable "zone_name" {
  description = "The domain name for the hosted zone"
  type        = string
  default     = "example.com"
}

variable "zone_comment" {
  description = "A comment for the hosted zone"
  type        = string
  default     = "Example hosted zone"
}

variable "zone_delegation_set_id" {
  description = "The ID of the reusable delegation set to associate with this hosted zone"
  type        = string
  default     = "Z2P70J7EXAMPLE"
}

variable "record_name" {
  description = "The name of the record set"
  type        = string
  default     = "www"
}

variable "record_type" {
  description = "The DNS record type (e.g., A, AAAA, CNAME)"
  type        = string
  default     = "A"
}

variable "record_ttl" {
  description = "The time-to-live for the record"
  type        = number
  default     = 300
}

variable "record_values" {
  description = "A list of resource records"
  type        = list(string)
  default     = ["192.0.2.1"]
}

variable "alias_name" {
  description = "The name for the alias record"
  type        = string
  default     = "example-alias"
}

variable "alias_zone_id" {
  description = "The zone ID for the alias record"
  type        = string
  default     = "Z3AQBSTGFYJSTF"
}

variable "alias_evaluate_target_health" {
  description = "Whether to evaluate the health of the alias target"
  type        = bool
  default     = true
}

variable "name_tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default = {
    Environment = "production"
    Team        = "devops"
    owner       = "owner"
    owneremail  = "owneremail@example.com"
    creationdate = "06-05-2023"
  }
}