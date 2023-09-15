resource "aws_iam_group" "admin-group" {
  name = "Admin"
}

resource "aws_iam_group_policy_attachment" "attachment-admin" {
  for_each = toset([
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ])

  group       = aws_iam_group.admin-group.name
  policy_arn = each.value
}