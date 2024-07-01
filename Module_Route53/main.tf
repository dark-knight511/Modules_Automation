resource "aws_route53_record" "this" {
  zone_id = var.zone_id
  zone_name = var.zone_name
  name    = var.record_name
  type    = var.record_type
  ttl     = var.record_ttl
  records = var.record_values

  dynamic "alias" {
    for_each = var.alias_name != "" && var.alias_zone_id != "" ? [1] : []
    content {
      name                   = var.alias_name
      zone_id                = var.alias_zone_id
      evaluate_target_health = var.alias_evaluate_target_health
    }
  }
}
