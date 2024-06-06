output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_ids" {
  description = "The IDs of the created public subnets"
  value       = [for subnet in aws_subnet.public_subnet : subnet.id]
}

output "private_subnet_ids" {
  description = "The IDs of the created private subnets"
  value       = [for subnet in aws_subnet.private_subnet : subnet.id]
}