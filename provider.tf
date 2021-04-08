provider "aws" {
  region  = "us-east-2"
}

module "vpc" {
  source = "vpc/"
  vpc_id = "${module.vpc.vpc_id}"
}
