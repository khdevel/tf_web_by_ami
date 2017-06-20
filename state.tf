terraform {
  backend "s3" {
    bucket     = "khdevel-remote-state-webami"
    lock_table = "tf_web_lock"
    key        = "terraform.tfstate"
    region     = "eu-west-1"
  }
}
