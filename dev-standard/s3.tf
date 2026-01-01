variable "enable_s3_bucket" {
  type        = string
  default     = "true"
  description = "Enable S3 bucket creation"
}

module "DEV-S3-BUCKET" {
  source = "../modules/s3"
  bucket_name = "${var.environment}-s3-bucket"
  versioning  = true
  tags        = {
    Environment = var.environment
    terraform   = "true"
  }
}

output "DEV-S3-BUCKET" {
  value       = module.DEV-S3-BUCKET.name
}
