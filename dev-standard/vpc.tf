resource "aws_default_vpc" "default" {
    cidr_block = "172.31.0.0/16"
  tags = {
    Name = "default"
  }
}