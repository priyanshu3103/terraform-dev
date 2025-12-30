terraform {
  backend "s3" {
    bucket         = "pb-dev-state-bucket"
    key            = "environments/dev/${terraform.workspace}/terraform.tfstate"
    region         = "us-west-2"
    use_lockfile   = "pb-dev-terraform-locks"
    encrypt        = true
  }
}