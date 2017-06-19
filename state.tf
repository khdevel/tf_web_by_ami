terraform {
  backend "s3" {
    bucket = "khdevel-remote-state-webami"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
