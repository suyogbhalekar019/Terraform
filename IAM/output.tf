output "admin_group_arn" {
  value = aws_iam_group.admin_group.arn
}

output "read_only_group_arn" {
  value = aws_iam_group.read_only_group.arn
}

output "developer_role_arn" {
  value = aws_iam_role.developer_role.arn
}
