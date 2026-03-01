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
# Internet Gateway
#############################
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "cloud-resume-igw"
  }
}


#############################
# Private Subnets
#############################
resource "aws_subnet" "private_subnets" {
  count = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.az[count.index]

  tags = {
    Name = "private_${count.index + 1}"
  }
}

#############################
# Public Subnets
#############################
resource "aws_subnet" "public_subnets" {
  count = 3
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = var.az[count.index]

  tags = {
    Name = "public_${count.index + 1}"
  }
}

#############################
# Private Route Table
#############################
resource "aws_route_table" "private_Route_Table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "10.0.1.0/24"
    #gateway_id = aws_internet_gateway.main.id
  }

  tags = {
      Name = "private-Route-Table"
    }
  }

resource "aws_route_table_association" "Private_Route_Table_Association" {
  count          = length(aws_subnet.private_subnets)
  route_table_id = aws_route_table.private_Route_Table.id
  subnet_id      = aws_subnet.private_subnets[count.index].id
}

#############################
# Public Route Table
#############################
resource "aws_route_table" "public_Route_Table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    #gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}

resource "aws_route_table_association" "Public_Route_Table_Association" {
  count          = length(aws_subnet.public_subnets)
  route_table_id = aws_route_table.public_Route_Table.id
  subnet_id      = aws_subnet.public_subnets[count.index].id
}