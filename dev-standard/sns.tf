module "DEV_SNS" {
  source = "../modules/sns"
  sns_topic_name = "${var.environment}-s3-event-notification-topic"
}