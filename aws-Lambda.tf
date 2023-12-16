provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

# Create an AWS Lambda Function
resource "aws_lambda_function" "test_lambda" {
  filename         = "lambda_function_payload.zip"  # Replace with your Lambda function's zip file
  function_name    = "lambda_function_name"        # Name your Lambda function
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "exports.test"                # Specify the handler
  runtime          = "nodejs12.x"                  # Specify the runtime
  source_code_hash = filebase64sha256("lambda_function_payload.zip")  # Replace with your zip file
}

# Create an IAM Role for the Lambda Function
resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"  # Name the IAM role

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        },
      },
    ],
  })
}
