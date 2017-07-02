terraform {
  backend "s3" {}
}

provider "aws" {
  region = "${var.region}"
}

module "webhost" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  source        = "webhost"
}
