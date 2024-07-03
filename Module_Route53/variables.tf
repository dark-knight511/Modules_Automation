variable "zone_id" {
  description = "The ID of the hosted zone."
  type        = string
}

variable "route53_records" {
  type = map(object({
    Name                              = string
    Type                              = string
    TTL                               = number
    ResourceRecords                   = list(string)
    Alias_name                        = optional(string)
    Alias_zone_id                     = optional(string)
    Alias_evaluate_target_health      = optional(bool)
  }))
}
