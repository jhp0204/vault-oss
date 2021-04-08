resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_22_all.id]
  key_name = var.ec2_key
  tags = {
    Name = "demo-ansible-instance"
    Purpose = "Terraform Ansible Connection test"
  }

