provider "aws" {
  region  = "us-east-2"
}

module "vpc" {
  source = "github.com/jhp0204/terraform-aws-simple/vpc/"
}

module "ec2sg" {
  source = "github.com/jhp0204/terraform-aws-simple/"
  vpc_id = module.vpc.vpc_id
}
