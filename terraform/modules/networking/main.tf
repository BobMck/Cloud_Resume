#############################
# VPC
#############################
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = "cloud-resume-vpc"
  }
}

#############################
# Subnets
#############################
resource "aws_subnet" "private_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_2a
  availability_zone = "eu-west-2a"

  tags = {
    Name = "private_2a"
  }
}
