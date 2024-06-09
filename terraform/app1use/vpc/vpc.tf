provider "aws" {
  region = "us-east-1"
}

module "customized_vpc"{
    source = "../../modules/vpc"
    name = "my_customized_vpc"
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
    public_subnet_az = "us-east-1a"
    private_subnet_az = "us-east-1a"
    tags = {
      Environment = "Test"
      project = "new-customized-project"
    }

}