#to create a VPC routing table.
resource "aws_route_table" "project101mainroutetable" {
  vpc_id = aws_vpc.project101_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project101intgtw.id
  }

  tags = {
    Name = "project101mainroutetable"
  }
}