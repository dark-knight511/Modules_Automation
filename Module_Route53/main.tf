resource "aws_route53_record" "records" {
  for_each = var.route53_records

  zone_id = var.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records

  # Uncomment and adjust these fields if you need alias records
  # alias {
  #   name                   = each.value.alias_name
  #   zone_id                = each.value.alias_zone_id
  #   evaluate_target_health = each.value.alias_evaluate_target_health
  # }

  # Uncomment if you need to add tags
  # tags = {
  #   Name = each.value.name_tag
  # }
}
