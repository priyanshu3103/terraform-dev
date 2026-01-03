resource "aws_s3_bucket" "aws-s3-bucket" {
  bucket = var.bucket_name
  tags        = {
    Environment = var.environment
    terraform   = "true"
  }
}

resource "aws_s3_bucket_versioning" "aws-s3-versioning" {
  bucket = aws_s3_bucket.aws-s3-bucket.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "aws-s3-public-access-block" {
  bucket                  = aws_s3_bucket.aws-s3-bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}