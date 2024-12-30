terraform {
  backend "s3" {
    bucket         = "EC2-S3_bucket-state-lock" # Replace with your S3 bucket name
    key            = "terraform/state.tfstate"    # Path inside the bucket
    region         = "us-east-1"                  # S3 bucket region
    dynamodb_table = "terraform-lock-table"       # DynamoDB table for state locking
    encrypt        = true                         # Enable encryption for the state file
  }
}
