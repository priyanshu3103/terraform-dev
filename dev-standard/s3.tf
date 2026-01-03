variable "enable_s3_bucket" {
  type        = string
  default     = "true"
  description = "Enable S3 bucket creation"
}

module "DEV_S3_PERSONAL_BACKUPS" {
  source = "../modules/s3"
  bucket_name = "${var.environment}-s3-personal-backups-us-west-2"
  tags = {
    Environment = var.environment
  }
}

module "DEV_S3_PERSONAL_BACKUPS_EVENT_NOTIFICATION" {
  source = "../modules/s3_notification"
  bucket_id = module.DEV_S3_PERSONAL_BACKUPS.bucket_id
  sns_topic_arn = module.DEV_SNS.sns_topic_arn
  events        = ["s3:ObjectCreated:*"]
  filter_suffix = ".log"
  depends_on = [module.DEV_SNS]
}