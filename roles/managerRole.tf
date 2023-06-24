resource "aws_iam_role" "manager-role" {
  name               = "Manager-role"
}

resource "aws_iam_role_policy_attachment" "attachment-manager" {
  for_each = toset([
    "arn:aws:iam::aws:policy/ReadOnlyAccess",
    "arn:aws:iam::aws:policy/IAMFullAccess"
  ])

  role       = aws_iam_role.manager-role.name
  policy_arn = each.value
}