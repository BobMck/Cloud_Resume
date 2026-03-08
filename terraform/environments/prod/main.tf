#---------- Networking Module ----------#

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


#---------- Compute Module ----------#

#############################
# EC2 Instance
#############################
module "compute" {
  source    = "../../modules/compute"
  subnet_id = module.networking.private_subnet_id[0]
  instance_type = var.instance_type
}

#---------- Storage Module ----------#
module "storage" {
  source = "../../modules/storage"
}

#---------- Load Balancing Module ----------#
#############################
# Load Balancer
#############################
module "load_balancing" {
  source            = "../../modules/load_balancing"
  public_subnet_ids = module.networking.public_subnet_id
  lb_sg_id          = module.security.lb_sg_id
  lb_logs_bucket    = module.storage.lb_logs_bucket_id  # <--- The Bridge!
}



#---------- Security Module ----------#
module "security" {
  source = "../../modules/security"
  vpc_id = module.networking.vpc_id
}