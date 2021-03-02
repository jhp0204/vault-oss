resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  tags = {
    Name = "demo-instance"
    Purpose = "Terraform Demo"
  }
}
