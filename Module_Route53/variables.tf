variable "zone_id" {
  type        = string
  description = "The ID of the hosted zone"
}

variable "zone_name"{
type         = string
description  ="zone_name"
}

variable "record_name" {
  type        = string
  description = "The name of the DNS record"
}

variable "record_type" {
  type        = string
  description = "The type of the DNS record"
  default     = "A"
}

variable "record_ttl" {
  type        = number
  description = "The TTL of the DNS record"
}

variable "record_values" {
  type        = list(string)
  description = "The list of values for the DNS record"
}

variable "alias_name" {
  type        = string
  description = "The alias DNS name"
  default     = ""
}

variable "alias_zone_id" {
  type        = string
  description = "The alias zone ID"
  default     = ""
}

variable "alias_evaluate_target_health" {
  type        = bool
  description = "Whether to evaluate the health of the alias target"
  default     = false
}
