output "vpc_default_security_group_id" {
  description = "The ID of the default security group created by the VPC"
  value       = aws_vpc.main.default_security_group_id
}

output "vpc_id" {
  value = aws_vpc.main.id
}