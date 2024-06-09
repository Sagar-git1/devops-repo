resource "aws_s3_bucket" "mys3" {
  bucket = var.bucket_name
  force_destroy = var.force_destroy
  tags = var.tags
}


resource "aws_s3_bucket_versioning" "mys3_versioning" {
  bucket = aws_s3_bucket.mys3.id
  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}