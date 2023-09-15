resource "aws_iam_group" "users-group" {
  name = "Users"
}

resource "aws_iam_group_policy_attachment" "attachment-users" {
  for_each = toset([
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ])

  group       = aws_iam_group.users-group.name
  policy_arn = each.value
}