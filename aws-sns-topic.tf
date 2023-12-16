provider "aws" {
  region = "us-west-2" # Specify your AWS region
}

# Create an SNS topic
resource "aws_sns_topic" "example_topic" {
  name = "example-topic"
}
