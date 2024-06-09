output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.mys3.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.mys3.arn
}

output "bucket_domain_name" {
  description = "The domain name of the S3 bucket"
  value       = aws_s3_bucket.mys3.bucket_domain_name
}