resource "aws_iam_group" "tech-group" {
  name               = "Tech-team-group"
}

resource "aws_iam_group_policy_attachment" "attachment-tech" {
  for_each = toset([
    "arn:aws:iam::aws:policy/PowerUserAccess"
  ])

  group      = aws_iam_group.tech-group.name
  policy_arn = each.value
}