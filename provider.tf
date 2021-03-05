provider "aws" {
  access_key = var.accesskey
  secret_key = var.secretkey
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-jhp0204"
    key = "terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}
