##############################
# VPC
##############################
variable "prod_vpc_cidr" {  
    description = "CIDR block for the VPC"
    type        = string
}
# variable "super-secret-password" {
#   description = "The super secret password"
#   type        = string
# }

#############################
# Pub + Priv Subnets
#############################
variable "az" {
    description = "Availability zones for the private subnets"
    type        = list(string)
}

###############################
# Private Subnets
###############################
variable "private_subnet_cidrs" {
    description = "CIDR blocks for the private subnets"
    type        = list(string)
}

###############################
# Public Subnets
###############################
variable "public_subnet_cidrs" {
    description = "CIDR blocks for the public subnets"
    type        = list(string)
}

##############################
# Compute
##############################
variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
}

