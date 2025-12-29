terraform {
  backend "s3" {
    bucket         = "pb-dev-state-bucket"
    key            = "dev-standard/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = "pb-dev-terraform-locks"
    encrypt        = true
  }
}