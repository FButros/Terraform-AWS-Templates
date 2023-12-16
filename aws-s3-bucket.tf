provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

# Create an S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Replace with a unique bucket name
  acl    = "private"                # Set the access control list
}
