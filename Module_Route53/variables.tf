variable "zone_id" {
  description = "The ID of the hosted zone."
  type        = string
}

variable "route53_records" {
  type = map(object({
    name                      = string
    type                      = string
    ttl                       = number
    records                   = list(string)
    alias_name                = optional(string)
    alias_zone_id             = optional(string)
    alias_evaluate_target_health = optional(bool)
  }))
}
