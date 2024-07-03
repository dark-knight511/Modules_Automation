variable "zone_id" {
  description = "The Route 53 hosted zone ID"
}

variable "route53_records" {
  description = "Map of Route 53 records"
  type        = map(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
    alias_name                   = optional(string)
    alias_zone_id                = optional(string)
    alias_evaluate_target_health = optional(bool)
  }))
}

