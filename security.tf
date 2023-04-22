#Provides a security group resource.
resource "aws_security_group" "project101_sg_allow_tls" {
  name        = "project101_sg_allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.project101_vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "project101_sg_allow_tls"
  }
}