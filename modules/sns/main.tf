resource "aws_sns_topic" "sns-topic" {
  name = var.topic_name
  tags = var.tags
}
