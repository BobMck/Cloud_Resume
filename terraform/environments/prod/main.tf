#############################
# VPC
#############################
module "networking" {
  source   = "../../modules/networking"
  vpc_cidr = var.prod_vpc_cidr
  private_subnet_cidr_2a = var.private_subnet_cidr_2a
}

#############################
# Compute
#############################
module "compute" {
  source    = "../../modules/compute"
  subnet_id = module.networking.private_subnet_id 
  instance_type = var.instance_type
}