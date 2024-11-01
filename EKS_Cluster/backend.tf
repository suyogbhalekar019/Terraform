terraform {
  backend "s3" {
    bucket         = "suyog-unique-my-backend-bucket"         # Replace with your bucket name
    key            = "global/s3/terraform.tfstate"            # Path within the bucket
    region         = "us-east-1"                              # Replace w"suyog-unique-my-backend-bucket"ith your AWS region
    dynamodb_table = "terraform-locks"                        # State locking with DynamoDB
    encrypt        = true                                     # Enable server-side encryption
  }
}
