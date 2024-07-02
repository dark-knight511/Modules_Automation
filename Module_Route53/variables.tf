variable "zone_id" {
  description = "The ID of the hosted zone."
  type        = string
}

variable "route53_records" {
  description = "A map of Route 53 records."
  type = map(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
}
