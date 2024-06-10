provider "aws" {
  region = var.region
}

resource "aws_instance" "ecc" {
  count = var.instance_count
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet_id
  tags = {
    Name = "${var.instance_name}-${count.index +1}"
  }
  lifecycle {
    create_before_destroy = true
  }
}