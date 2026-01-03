resource "aws_sns_topic" "sns-topic" {
  name   = "s3-event-notification-topic"
  policy = data.aws_iam_policy_document.sns-topic.json
}