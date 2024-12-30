resource "aws_s3_bucket" "backend_bucket" {
  bucket = "suyog-unique-my-backend-bucket"      # Replace with a unique bucket name
  acl    = "private"                             # Access control list (default is private)

  tags = {
    Name        = "S3_backend"
    Environment = "Test"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.backend_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = "terraform-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformLocksTable"
  }
}
