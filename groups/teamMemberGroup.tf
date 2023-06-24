resource "aws_iam_group" "team-member-group" {
  name               = "Team-member-group"
}

resource "aws_iam_group_policy_attachment" "attachment-tm" {
  for_each = toset([
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ])

  group       = aws_iam_group.team-member-group.name
  policy_arn = each.value
}