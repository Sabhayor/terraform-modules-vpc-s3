terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-sab-448049797195"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}
