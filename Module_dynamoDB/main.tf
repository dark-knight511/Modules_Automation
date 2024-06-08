provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  ttl {
    attribute_name = var.ttl_attribute_name
    enabled        = var.ttl_enabled
  }

  global_secondary_index {
    name               = var.gsi_name
    hash_key           = var.gsi_hash_key
    range_key          = var.gsi_range_key
    write_capacity     = var.gsi_write_capacity
    read_capacity      = var.gsi_read_capacity
    projection_type    = var.gsi_projection_type
    non_key_attributes = var.gsi_non_key_attributes
  }

  tags = var.name_tags
}
