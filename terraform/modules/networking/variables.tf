#############################
# VPC
#############################
variable "vpc_cidr" {  
    description = "CIDR block for the VPC"
    type        = string
}

###############################
# Subnets
###############################
variable "private_subnet_cidr_2a" {
    description = "CIDR block for the private subnet in availability zone 2a"
    type        = string
}