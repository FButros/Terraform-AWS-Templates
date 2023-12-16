provider "aws" {
  region = "us-east-1" # Specify your AWS region
}

# Create an SQS queue
resource "aws_sqs_queue" "example_queue" {
  name                      = "example-queue"
  delay_seconds             = 90
  message_retention_seconds = 86400 # Define message retention period
  receive_wait_time_seconds = 10
}
