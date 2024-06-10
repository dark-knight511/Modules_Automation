provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "example" {
  name              = var.zone_name
  comment           = var.zone_comment
  delegation_set_id = var.zone_delegation_set_id
}

resource "aws_route53_record" "record" {
  count   = length(var.record_values) > 0 ? 1 : 0
  zone_id = aws_route53_zone.example.zone_id
  name    = var.record_name
  type    = var.record_type
  ttl     = var.record_ttl
  records = var.record_values
}

resource "aws_route53_record" "alias" {
  count   = var.alias_name != null ? 1 : 0
  zone_id = aws_route53_zone.example.zone_id
  name    = var.alias_name
  type    = "A"
  alias {
    name                   = var.alias_name
    zone_id                = var.alias_zone_id
    evaluate_target_health = var.alias_evaluate_target_health
  }
}
