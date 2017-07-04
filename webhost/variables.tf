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

variable "sg" {
  description = "The security group data, may be taken from external module"
}

variable "nodes_number" {
  description = "The number of nodes"
}
