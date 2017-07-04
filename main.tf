terraform {
  backend "s3" {}
}

provider "aws" {
  region = "${var.region}"
}

module "securitygroups" {
  sg_name = "some_security_group"
  source  = "securitygroups"
}

module "webhost" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  nodes_number  = "${var.nodes_number}"
  sg            = "${module.securitygroups.security_group_id}"
  source        = "webhost"
}

module "phphost" {
  instance_ip_addresses = "${module.webhost.public_ip}"
  nodes_number          = "${var.nodes_number}"
  source                = "phphost"
}