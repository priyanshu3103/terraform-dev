variable "enable_s3_bucket" {
  type        = string
  default     = "true"
  description = "Enable S3 bucket creation"
}

module "DEV_S3_BUCKET" {
  source = "../modules/s3"
  bucket_name = "${var.environment}-s3-bucket"
  versioning  = true
  tags        = {
    Environment = var.environment
    terraform   = "true"
  }
}

output "DEV_S3_BUCKET" {
  value       = module.DEV_S3_BUCKET.bucket_id
}
