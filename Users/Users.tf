resource "aws_iam_user" "user_one" {
  name = "Angela"
}

resource "aws_iam_user" "user_two" {
  name = "Mariana"
}

resource "aws_iam_user" "user_three" {
  name = "Ana"
}

resource "aws_iam_user" "user_four" {
  name = "Reginaldo"
}

resource "aws_iam_user" "user_five" {
  name = "Renato"
}

resource "aws_iam_user" "user_six" {
  name = "Marcelo"
}

resource "aws_iam_group_membership" "team" {
  name = "users-group-membership"

  users = [
    aws_iam_user.user_one.name,
    aws_iam_user.user_two.name,
    aws_iam_user.user_three.name,
    aws_iam_user.user_four.name,
    aws_iam_user.user_five.name,
    aws_iam_user.user_six.name,
  ]

  group = "Users"
}

