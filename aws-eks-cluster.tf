provider "aws" {
  region = "us-west-2" # Specify your AWS region
}

# Create an IAM role for EKS
resource "aws_iam_role" "eks_role" {
  name = "example_eks_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "eks.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      },
    ],
  })
}

# Create the EKS cluster
resource "aws_eks_cluster" "example_cluster" {
  name     = "example-eks-cluster"
  role_arn = aws_iam_role.eks_role.arn

  # Define VPC configuration for the cluster
  vpc_config {
    subnet_ids = ["subnet-xxxxxx", "subnet-yyyyyy"] # Replace with your subnet IDs
  }
}
