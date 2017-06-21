provider "aws" {
  region = "${var.region}"
}

module "remote_state" {
  source      = "git@github.com:khdevel/tf_remote_state.git"
  prefix      = "${var.prefix}"
  environment = "${var.environment}"
}

module "webhost" {
  source        = "./module"
  key_name      = "${var.key_name}"
  ami_filter    = "${var.ami_filter}"
  instance_type = "${var.instance_type}"
}
