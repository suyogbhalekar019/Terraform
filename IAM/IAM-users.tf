resource "aws_iam_user" "admin_users" {
  count = length(var.admin_usernames)
  name  = var.admin_usernames[count.index]
}

resource "aws_iam_user" "read_only_users" {
  count = length(var.read_only_usernames)
  name  = var.read_only_usernames[count.index]
}

resource "aws_iam_user_group_membership" "admin_group_membership" {
  count = length(var.admin_usernames)
  user  = aws_iam_user.admin_users[count.index].name
  groups = [aws_iam_group.admin_group.name]
}

resource "aws_iam_user_group_membership" "read_only_group_membership" {
  count = length(var.read_only_usernames)
  user  = aws_iam_user.read_only_users[count.index].name
  groups = [aws_iam_group.read_only_group.name]
}
