resource "aws_iam_policy" "admin_policy" {
  name        = "AdminPolicy"
  description = "Full administrative access"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = "*",
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_policy" "read_only_policy" {
  name        = "ReadOnlyPolicy"
  description = "Read-only access to resources"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = [
          "ec2:Describe*",
          "s3:ListBucket",
          "s3:GetObject"
        ],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}
