resource "aws_iam_role" "tech-role" {
  name               = "Tech-team-role"
}

resource "aws_iam_role_policy_attachment" "attachment-tech" {
  for_each = toset([
    "arn:aws:iam::aws:policy/PowerUserAccess"
  ])

  role       = aws_iam_role.tech-role.name
  policy_arn = each.value
}