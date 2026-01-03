variable "enable_s3_bucket" {
  type        = string
  default     = "true"
  description = "Enable S3 bucket creation"
}

module "DEV_S3_PERSONAL_BACKUPS" {
  source = "../modules/s3"
  bucket_name = "${var.environment}-s3-personal-backups-us-west-2"
  versioning  = true
}

output "DEV_S3_PERSONAL_BACKUPS" {
  value       = module.DEV_S3_PERSONAL_BACKUPS.bucket_id
}
