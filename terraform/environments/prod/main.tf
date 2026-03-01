#############################
# VPC
#############################
module "networking" {
  source   = "../../modules/networking"
  vpc_cidr = var.prod_vpc_cidr

#############################
# Pub + Priv Subnets
#############################
  az = var.az

#############################
# Private Subnets
#############################
  private_subnet_cidrs = var.private_subnet_cidrs

#############################
# Public Subnets
#############################
  public_subnet_cidrs = var.public_subnet_cidrs
}

#############################
# Compute
#############################
module "compute" {
  source    = "../../modules/compute"
  subnet_id = module.networking.private_subnet_id[0]
  instance_type = var.instance_type
}