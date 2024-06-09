module "ec2_instance" {
  source = "../modules/ec2"
  region = "us-east-1"
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  instance_name = "myapp2ec2"
  vpc_id = "vpc-013413778b3cc0d59"
}
