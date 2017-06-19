provider "aws" {
  region = "${var.region}"
}

data "aws_ami_ids" "awslinux" {
  owners = ["self"]

  filter {
    name   = "name"
    values = ["myWebAMI"]
  }
}

module "remote_state" {
  source      = "git@github.com:khdevel/tf_remote_state.git"
  prefix      = "${var.prefix}"
  environment = "${var.environment}"
}
