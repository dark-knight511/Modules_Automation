resource "aws_route53_record" "records" {
  for_each = var.route53_records

  zone_id = var.zone_id
  Name    = each.value.Name
  Type    = each.value.Type
  TTL     = each.value.TTL
  ResourceRecords = each.value.ResourcrRecords

  dynamic "alias" {
    for_each = each.value.alias_name != null && each.value.alias_zone_id != null && each.value.alias_evaluate_target_health != null ? [each.value] : []
    content {
      name                   = alias.value.alias_name
      zone_id                = alias.value.alias_zone_id
      evaluate_target_health = alias.value.alias_evaluate_target_health
    }
  }
}
