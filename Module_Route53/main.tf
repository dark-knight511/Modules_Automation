provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "example" {
  name              = var.zone_name
  
 
}

resource "aws_route53_record" "record" {
  for_each = { for idx, val in var.record_values : idx => val }
  zone_id  = aws_route53_zone.example.zone_id
  name     = var.record_name
  type     = var.record_type
  ttl      = var.record_ttl
  records  = [each.value]
}

resource "aws_route53_record" "alias" {
  for_each = var.alias_name != null ? { alias = var.alias_name } : {}
  zone_id  = aws_route53_zone.example.zone_id
  name     = each.value
  type     = "A"
  alias {
    name                   = each.value
    zone_id                = var.alias_zone_id
    evaluate_target_health = var.alias_evaluate_target_health
  }
}
