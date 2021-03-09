resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.main_public_subnet1.id}"
  vpc_security_group_ids = ["${aws_security_group.main-allow-all.id}"]
  tags = {
    Name = "demo-instance"
    Purpose = "Terraform Demo"
  }
}
