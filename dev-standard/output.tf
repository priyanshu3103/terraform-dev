# s3 Bucket for personal backups outputs
output "DEV_S3_PERSONAL_BACKUPS" {
  value       = module.DEV_S3_PERSONAL_BACKUPS.bucket_id
}

# SNS Topic ARN output
output "DEV_SNS_TOPIC_ARN" {
  value = module.DEV_SNS.sns_topic_arn
}