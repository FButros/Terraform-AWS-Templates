provider "aws" {
  region = "us-west-2"  # Specify your AWS region
}

# Create a DynamoDB Table
resource "aws_dynamodb_table" "example" {
  name           = "example-table"  # Name your table
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Id"  # Define the hash key

  attribute {
    name = "Id"
    type = "S"  # Set the attribute type (e.g., 'S' for string)
  }
}
