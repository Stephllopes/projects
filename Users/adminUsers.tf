resource "aws_iam_user" "admin_one" {
  name = "Stephanie"
}

resource "aws_iam_user" "admin_two" {
  name = "Roberto"
}

resource "aws_iam_user" "admin_three" {
  name = "Application"
}

resource "aws_iam_group_membership" "team_admin" {
  name = "admin-group-membership"

  users = [
    aws_iam_user.admin_one.name,
    aws_iam_user.admin_two.name,
    aws_iam_user.admin_three.name,
  ]

  group = "Admin"
}