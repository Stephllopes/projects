resource "aws_iam_group" "manager-group" {
  name = "Manager-group"
}

resource "aws_iam_group_policy_attachment" "attachment-manager" {
  for_each = toset([
    "arn:aws:iam::aws:policy/ReadOnlyAccess",
    "arn:aws:iam::aws:policy/IAMFullAccess"
  ])

  group       = aws_iam_group.manager-group.name
  policy_arn = each.value
}