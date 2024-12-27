resource "aws_iam_group" "admin_group" {
  name = "AdminGroup"
}

resource "aws_iam_group" "read_only_group" {
  name = "ReadOnlyGroup"
}
