variable "region" {
  description = "The region in which vpc is created"
  type = string
  default = "us-east-1"
}
variable "name" {
  description = "name of the vpc"
  type = string
}

variable "cidr_block" {
  description = "The CIDR block for vpc"
  type = string
}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_subnet_az" {
  description = "The availability zone for the public subnet"
  type        = string
}

variable "private_subnet_az" {
  description = "The availability zone for the private subnet"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}