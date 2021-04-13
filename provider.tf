provider "aws" {
  region  = module.vpc.data_json
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}
provider "vault" {
    address = "http://127.0.0.1:8200"
    token = "s.ojO2vDeAlngypg2aJZKkzI56"
}
module "vpc" {
  source = "github.com/jhp0204/vault-oss/vpc"
}


