#configure AWS provider
provider "aws" {
  region = "us-east-1"
}

#provision instance
resource "aws_instance" "server" {
  ami                         = "ami-06e46074ae430fba6"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.project101_sg_allow_tls.id]
  subnet_id                   = aws_subnet.project101_publicsubnet.id
  associate_public_ip_address = true


  tags = {
    Name = "server1"
  }
}
