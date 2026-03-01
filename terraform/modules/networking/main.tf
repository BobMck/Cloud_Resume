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
# Private Subnets
#############################
resource "aws_subnet" "private_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_2a
  availability_zone = "eu-west-2a"

  tags = {
    Name = "private_2a"
  }
}
resource "aws_subnet" "private_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_2b
  availability_zone = "eu-west-2b"

  tags = {
    Name = "private_2b"
  }
}

resource "aws_subnet" "private_2c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_2c
  availability_zone = "eu-west-2c"

  tags = {
    Name = "private_2c"
  }
}

#############################
# Public Subnets
#############################
resource "aws_subnet" "public_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_2a
  availability_zone = "eu-west-2a"

  tags = {
    Name = "public_2a"
  }
}
resource "aws_subnet" "public_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_2b
  availability_zone = "eu-west-2b"

  tags = {
    Name = "public_2b"
  }
}

resource "aws_subnet" "public_2c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_2c
  availability_zone = "eu-west-2c"

  tags = {
    Name = "public_2c"
  }
}