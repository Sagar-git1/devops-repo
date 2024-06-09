# AWS S3 Bucket Module

This module creates an S3 bucket with optional versioning and tags.

## Usage

```hcl
module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket_name   = "my-s3-bucket"
  region        = "us-west-2"
  acl           = "private"
  versioning    = true
  force_destroy = false
  tags = {
    Environment = "dev"
    Name        = "My S3 Bucket"
  }
}
```
