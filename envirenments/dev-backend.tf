terraform {
  backend "s3" {
    bucket         = "${var.environment}-state_bucket"
    key            = "dev-standard/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "${var.environment}-terraform-locks"
    encrypt        = true
  }
}