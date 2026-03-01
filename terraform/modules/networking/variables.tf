#############################
# VPC
#############################
variable "vpc_cidr" {  
    description = "CIDR block for the VPC"
    type        = string
}

###############################
# Private Subnets
###############################
variable "private_subnet_cidr_2a" {
    description = "CIDR block for the private subnet in availability zone 2a"
    type        = string
}
variable "private_subnet_cidr_2b" {
    description = "CIDR block for the private subnet in availability zone 2b"
    type        = string
}
variable "private_subnet_cidr_2c" {
    description = "CIDR block for the private subnet in availability zone 2c"
    type        = string
}

###############################
# Public Subnets
###############################
variable "public_subnet_cidr_2a" {
    description = "CIDR block for the public subnet in availability zone 2a"
    type        = string
}
variable "public_subnet_cidr_2b" {
    description = "CIDR block for the public subnet in availability zone 2b"
    type        = string
}
variable "public_subnet_cidr_2c" {
    description = "CIDR block for the public subnet in availability zone 2c"
    type        = string
}