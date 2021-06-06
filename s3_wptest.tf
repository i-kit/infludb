resource "aws_s3_bucket" "bucket" {
  bucket = "upwork-qa-perf-storage"
  acl    = "private"

  lifecycle_rule {
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }
}