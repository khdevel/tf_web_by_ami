variable "region" {
  description = "The AWS region"
}

variable "key_name" {
  description = "The local key"
}

variable "ami" {
  description = "The AMIs to use"
}

variable "instance_type" {
  description = "The instance type"
  default     = "t2.micro"
}

variable "nodes_number" {
  description = "The number of nodes"
}
