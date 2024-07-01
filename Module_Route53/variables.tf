variable "zone_name" {
  description = "The domain name for the hosted zone"
  type        = string
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

