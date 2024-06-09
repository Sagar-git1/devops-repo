variable "bucket_name" {
  description = "The name of s3 bucket"
  type = string
}

variable "region" {
  description = "The region in which aws bucket will be created"
  type = string
  default = "us-east-1"
}

# variable "acl" {
#   description = "The canned ACL to apply"
#   type        = string
#   default     = "private"
# }

variable "versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Force destroy the bucket (required if it contains objects)"
  type        = bool
  default     = false
}

variable "tags" {
    description = "A map of tags that can be assigned to the bucket"
    type = map(string)
    default = {}
}
