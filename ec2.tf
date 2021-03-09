resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.example-allow-all.id}"]
  tags = {
    Name = "demo-instance"
    Purpose = "Terraform Demo"
  }
}
