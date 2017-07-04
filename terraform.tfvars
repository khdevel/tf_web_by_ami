ami          = "ami-dbf710a2"
key_name     = "kamil@iMac"
region       = "eu-west-1"
nodes_number = 2

terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket     = "khdevel-remote-state-home"
      key        = "${path_relative_to_include()}/terraform.tfstate"
      region     = "eu-west-1"
      encrypt    = true
      lock_table = "my-lock-table"
    }
  }
}
