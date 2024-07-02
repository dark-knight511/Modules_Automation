variable "zone_id" {
  description = "The ID of the hosted zone."
  type        = string
}

variable "zone_name" {
  description = "The name of the hosted zone."
  type        = string
}

variable "route53_records" {
  description = "A map of Route 53 records."
  type = map(object({
    type    = string
    ttl     = number
    records = list(string)
  }))
}
