terraform{  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

resource "aws_instance" "example" {
  ami           = "ami-09282971cf2faa4c9"
  instance_type = "t2.micro"
  
    tags = {
    Name = "demo-instance"
    Purpose = "Terraform Demo"
  }
}

