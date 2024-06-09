variable "region" {
    description = "The AWS region in which ec2 instance to be deployed"
    type = string
}
variable "ami" {
    description = "The AMI ID for the instance"
    type = string
}
variable "instance_type" {
  description = "The type of instance we are going to use"
  type = string
}
variable "instance_name" {
  description = "name of the ec2 instance"
  type = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}