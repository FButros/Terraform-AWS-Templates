provider "aws" {
  region = "us-east-1" # Specify your AWS region
}

# Create a CloudWatch Log Group
resource "aws_cloudwatch_log_group" "example_log_group" {
  name              = "/aws/lambda/example-log-group"
  retention_in_days = 14 # Define log retention period
}
