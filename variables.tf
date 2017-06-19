variable "region" {
  description = "The AWS region"
}

variable "key_name" {
  description = "The local key"
  default     = "kamil@iMac"
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

