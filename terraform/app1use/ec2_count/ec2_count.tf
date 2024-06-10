module "ec2_instances" {
  source          = "../../modules/ec2_count"
  region          = "us-east-1"
  ami             = "ami-04b70fa74e45c3917"  # Example AMI ID, replace with your own
  instance_type   = "t2.micro"
  key_name        = "newkeyone"
  subnet_id       = "subnet-030c5ccc2877b96cf"  # Replace with your subnet ID
  instance_name   = "ec2-devops-pro"
  instance_count  = 3
}