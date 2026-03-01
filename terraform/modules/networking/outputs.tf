output "vpc_default_security_group_id" {
  description = "The ID of the default security group created by the VPC"
  value       = aws_vpc.main.default_security_group_id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_id" {
  value = [for subnet in aws_subnet.private_subnets : subnet.id]
}

output "public_subnet_ids" {
  value = [for subnet in aws_subnet.public_subnets : subnet.id]
}