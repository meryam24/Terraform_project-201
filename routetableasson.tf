# to create an association between a route table and a subnet
resource "aws_route_table_association" "routetableasson" {
  subnet_id      = aws_subnet.project101_publicsubnet.id
  route_table_id = aws_route_table.project101mainroutetable.id
}