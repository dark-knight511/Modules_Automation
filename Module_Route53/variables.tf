variable "route53_records" {
  description = "List of Route 53 records"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
    alias   = optional(object({
      name                   = string
      zone_id                = string
      evaluate_target_health = bool
    }))
  }))
  
}
