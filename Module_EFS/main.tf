provider "aws" {
  region = "us-east-1"
}

resource "aws_efs_file_system" "example" {
  creation_token   = var.creation_token
  performance_mode = var.performance_mode
  throughput_mode  = var.throughput_mode

  # # provisioned_throughput_in_mibps is only needed when throughput_mode is set to provisioned
  # dynamic "provisioned_throughput_in_mibps" {
  #   for_each = var.throughput_mode == "provisioned" ? [1] : []
  #   content {
  #     provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  #   }
  # }

 encrypted = var.encrypted

  kms_key_id = var.encrypted && var.kms_key_id != "" ? var.kms_key_id : null

  tags = var.name_tags
}

resource "aws_efs_mount_target" "example" {
  for_each = toset(var.subnet_ids)

  file_system_id  = aws_efs_file_system.example.id
  subnet_id       = each.key
  security_groups = var.security_group_ids
}

output "efs_file_system_id" {
  value = aws_efs_file_system.example.id
}

output "efs_mount_targets" {
  value = aws_efs_mount_target.example
}
