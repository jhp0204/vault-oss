provider "aws" {
  region  = module.vpc.data_json
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

module "vpc" {
  source = "github.com/jhp0204/vault-oss/vpc"
}


