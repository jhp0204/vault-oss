resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  subnet_id = "subnet-1c1e0466"
  vpc_security_group_ids = [aws_security_group.allow_22_all.id]
  tags = {
    Name = "demo-instance"
    Purpose = "Terraform Demo"
  }
}
