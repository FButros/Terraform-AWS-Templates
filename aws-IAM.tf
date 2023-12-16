provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

# Create an IAM User
resource "aws_iam_user" "user" {
  name = "example_user"  # Name your IAM user
}

# Create an IAM User Policy
resource "aws_iam_user_policy" "policy" {
  name = "example_policy"  # Name your policy
  user = aws_iam_user.user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:*"],
      "Resource": ["arn:aws:s3:::example-bucket/*"]
    }
  ]
}
EOF
}
