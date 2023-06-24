resource "aws_iam_role" "team-member-role" {
  name               = "Team-member-role"
}

resource "aws_iam_role_policy_attachment" "attachment-tm" {
  for_each = toset([
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ])

  role       = aws_iam_role.team-member-role.name
  policy_arn = each.value
}