provider "aws" {
  region = "us-west-2" # Specify your AWS region
}

# Create a KMS key
resource "aws_kms_key" "example_key" {
  description = "Example KMS key for encryption"
}

# Create an alias for the KMS key
resource "aws_kms_alias" "example_alias" {
  name          = "alias/example"
  target_key_id = aws_kms_key.example_key.key_id
}
