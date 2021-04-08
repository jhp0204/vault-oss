resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  key_name = "terraform-keypair"
  tags = {
    Name = "demo-ansible-instance"
    Purpose = "Terraform Ansible Connection test"
  }
 }
