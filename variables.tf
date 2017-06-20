variable "region" {
  description = "The AWS region"
}

variable "key_name" {
  description = "The local key"
}

variable "ami" {
  description = "The AMIs to use"
  type        = "map"
  default     = {}
}

variable "instance_type" {
  description = "The instance type"
  default     = "t2.micro"
}

variable "prefix" {
  default     = "khdevel"
  description = "The name of our organization"
}

variable "environment" {
  default     = "webami"
  description = "The name of our environment"
}

variable "ami_filter" {
  description = "The AMI filter"
}

variable "remote_source" {
  default     = "git@github.com:khdevel/tf_remote_state.git"
  description = "The remote sorce for the state file"
}
