terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}


resource "aws_iam_policy" "viet" {
  name = "PolicyUserViet"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user" "viet" {
  name = "viet"
  tags = {
    Description = "Test user"
  }
}

resource "aws_iam_user_policy_attachment" "viet-admin-user" {
  user       = aws_iam_user.viet.name
  policy_arn = aws_iam_policy.viet.arn
}