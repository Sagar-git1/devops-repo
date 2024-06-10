variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  description = "the key name to use for the instances"
  type = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the instances in"
  type        = string
}

variable "instance_name" {
  description = "The base name for the instances"
  type        = string
}

variable "instance_count" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}