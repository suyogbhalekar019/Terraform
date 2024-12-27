resource "aws_iam_group_policy_attachment" "admin_group_attach" {
  group      = aws_iam_group.admin_group.name
  policy_arn = aws_iam_policy.admin_policy.arn
}

resource "aws_iam_group_policy_attachment" "read_only_group_attach" {
  group      = aws_iam_group.read_only_group.name
  policy_arn = aws_iam_policy.read_only_policy.arn
}
