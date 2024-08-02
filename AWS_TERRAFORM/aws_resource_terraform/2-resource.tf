#creating vpc
resource "aws_vpc" "genpact-hafeezpet-vpc" {
  # cidr_block = "10.0.0.0/22"
  cidr_block = var.cidr_block
  
  tags = {
    Name = "genpact-hafeezpet-vpc"
  }
}

#create 1 public subnet
resource "aws_subnet" "genpact-hafeezpet-public-subnet" {
  # vpc_id            = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id     = var.vpc_id
  cidr_block = "10.0.0.0/24"
  # availability_zone = "ap-south-1a"
  availability_zone = var.availability_zone

  tags = {
    Name = "genpact-hafeezpet-public-subnet"
  }
}

#create 1 private subnet
resource "aws_subnet" "genpact-hafeezpet-private-subnet" {
  # vpc_id            = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.availability_zone

  tags = {
    Name = "genpact-hafeezpet-private-subnet"
  }
}

#create internet gateway
resource "aws_internet_gateway" "genpact-hafeezpet-igw" {
  # vpc_id = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id = var.vpc_id

  tags = {
    Name = "genpact-hafeezpet-igw"
  }
}

#create route public table
resource "aws_route_table" "genpact-hafeezpet-public-rt" {
  # vpc_id = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.genpact-hafeezpet-igw.id
  }

  tags = {
    Name = "genpact-hafeezpet-public-rt"
  }
}

#associate route table with public subnet
resource "aws_route_table_association" "genpact-hafeezpet-public-rt-association" {
  subnet_id      = aws_subnet.genpact-hafeezpet-public-subnet.id
  # subnet_id      = var.subnet_id
  route_table_id = aws_route_table.genpact-hafeezpet-public-rt.id
}

#create private route table
resource "aws_route_table" "genpact-hafeezpet-private-rt" {
  # vpc_id = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.genpact-hafeezpet-igw.id
  }

  tags = {
    Name = "genpact-hafeezpet-private-rt"
  }
}

#associate route table with private subnet
resource "aws_route_table_association" "genpact-hafeezpet-private-rt-association" {
  subnet_id      = aws_subnet.genpact-hafeezpet-private-subnet.id
  route_table_id = aws_route_table.genpact-hafeezpet-private-rt.id
}

#create security group
resource "aws_security_group" "genpact-hafeezpet-sg" {
  name = "genpact-hafeezpet-sg"
  # vpc_id = aws_vpc.genpact-hafeezpet-vpc.id
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}