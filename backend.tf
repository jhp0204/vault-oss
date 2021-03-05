terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-jhp0204"
    key = "terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}
