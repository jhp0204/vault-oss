provider "aws" {
  region  = "us-east-2"
}

module "vpc" {
  source = "github.com/jhp0204/terraform-aws-simple.git"
  vpc_id = "${module.vpc.vpc_id}"
}
