variable "zone_name" {
  description = "The domain name for the hosted zone"
  type        = string
  default     = "example.com"
}

variable "zone_id" {
  description = "The hosted zone id "
  type = string
  
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

