resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "t2.micro"

  tags = {
    Name = "demo-vpc"
  }
}
