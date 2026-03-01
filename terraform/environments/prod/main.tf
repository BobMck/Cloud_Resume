#############################
# VPC
#############################
module "networking" {
  source   = "../../modules/networking"
  vpc_cidr = var.prod_vpc_cidr

#############################
# Private Subnets
#############################
  private_subnet_cidr_2a = var.private_subnet_cidr_2a
  private_subnet_cidr_2b = var.private_subnet_cidr_2b
  private_subnet_cidr_2c = var.private_subnet_cidr_2c

#############################
# Public Subnets
#############################
  public_subnet_cidr_2a = var.public_subnet_cidr_2a
  public_subnet_cidr_2b = var.public_subnet_cidr_2b
  public_subnet_cidr_2c = var.public_subnet_cidr_2c
}
#############################
# Compute
#############################
module "compute" {
  source    = "../../modules/compute"
  subnet_id = module.networking.private_subnet_id 
  instance_type = var.instance_type
}