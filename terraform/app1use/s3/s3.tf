module "s3_module" {
  source = "../../modules/s3"
  bucket_name = "mys3-devops-one"
  versioning = true
  tags = {
    "Environment"= "dev"
    "Application" = "mys3-app1"
  }
}