provider "aws" {
  region  = "us-east-2"
}

module "vpc" {
  source                 = "vpc/"
  namespace              = "${var.namespace}"
  aws_instance_ami       = "${var.aws_instance_ami}"
  aws_instance_type      = "${var.aws_instance_type}"
  subnet_ids             = "${module.network.subnet_ids}"
  vpc_security_group_ids = "${module.network.security_group_id}"
  user_data              = ""
  ssh_key_name           = "${var.ssh_key_name}"
  hashidemos_zone_id     = "${data.aws_route53_zone.hashidemos.zone_id}"
  database_pwd           = "${random_pet.replicated-pwd.id}"
  db_subnet_group_name   = "${module.network.db_subnet_group_id}"
  owner                  = "${var.owner}"
  ttl                    = "${var.ttl}"
}
