provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
  profile = "default" 
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24"]
  private_subnet_cidrs = ["10.0.2.0/24"]
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "my-terraform-state-bucket-sab-448049797195"
 
}
