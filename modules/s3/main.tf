variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}


resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  force_destroy = true # Optional: allows terraform destroy even if bucket has objects
}

output "bucket_id" {
  value = aws_s3_bucket.this.id
}
