#to create a VPC Internet Gateway
resource "aws_internet_gateway" "project101intgtw" {
  vpc_id = aws_vpc.project101_vpc.id

  tags = {
    Name = "project101intgtw"
  }
}