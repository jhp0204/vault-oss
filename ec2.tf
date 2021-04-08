resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  key_name = "var.ec2_key"
  tags = {
    Name = "demo-ansible-instance"
    Purpose = "Terraform Ansible Connection test"
  }
 }
