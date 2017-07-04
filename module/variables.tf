variable "key_name" {
  description = "The local key"
}

variable "instance_type" {
  description = "The instance type"
  default     = "t2.micro"
}

variable "ami_filter" {
  description = "The AMI filter"
}
