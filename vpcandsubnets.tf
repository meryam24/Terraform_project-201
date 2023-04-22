#create vpc
resource "aws_vpc" "project101_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "project101"
  }
}
resource "aws_subnet" "project101_publicsubnet" {
  vpc_id     = aws_vpc.project101_vpc.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name = "project101_publicsubnet"
  }
}

resource "aws_subnet" "project101_privatesubnet" {
  vpc_id     = aws_vpc.project101_vpc.id
  cidr_block = "10.10.2.0/24"

  tags = {
    Name = "project101_privatesubnet"
  }
}
