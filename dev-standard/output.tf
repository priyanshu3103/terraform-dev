# s3 Bucket for personal backups outputs
output "DEV_S3_PERSONAL_BACKUPS" {
  value       = module.DEV_S3_PERSONAL_BACKUPS.bucket_id
}