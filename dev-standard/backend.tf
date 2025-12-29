terraform {
  backend "s3" {
    bucket         = "pb-dev-state-bucket"
    key            = "dev-standard/terraform.tfstate"
    region         = "us-west-2"
    use_lockfile = "pb-dev-terraform-locks"
    encrypt        = true
  }
}