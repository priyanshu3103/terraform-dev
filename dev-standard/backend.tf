terraform {
  backend "s3" {
    bucket         = "pb-dev-state-bucket"
    key            = "environments/dev/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "pb-dev-terraform-locks"
    encrypt        = true
  }
}