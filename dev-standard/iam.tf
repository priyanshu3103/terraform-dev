data "aws_iam_policy_document" "sns-topic" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }

    actions   = ["SNS:Publish"]
    resources = [module.DEV_SNS.sns_topic_arn]

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = [module.DEV_S3_PERSONAL_BACKUPS.bucket_arn]
    }
  }
}