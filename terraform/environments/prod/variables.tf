#############################
# VPC
#############################
variable "prod_vpc_cidr" {  
    description = "CIDR block for the VPC"
    type        = string
}
# variable "super-secret-password" {
#   description = "The super secret password"
#   type        = string
# }

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
}

###############################
# Subnets
###############################
variable "private_subnet_cidr_2a" {
    description = "CIDR block for the private subnet in availability zone 2a"
    type        = string
}