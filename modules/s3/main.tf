resource "aws_s3_bucket" "s3-bucket" {
  bucket = var.bucket_name
  tags = merge(
    {
      terraform = "true"
    },
    var.tags
  )
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
  bucket = aws_s3_bucket.s3-bucket.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "s3-public-access-block" {
  bucket                  = aws_s3_bucket.s3-bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.bucket.id

  topic {
    topic_arn     = aws_sns_topic.sns-topic.arn
    events        = ["s3:ObjectCreated:*"]
  }
}