resource "aws_iam_user" "users" {
  count = length(var.users)
  name  = var.users[count.index]
}

resource "aws_iam_group" "group" {
  name = var.group_name
}

resource "aws_iam_group_membership" "group_membership" {
  name = "group-membership"

  users = [
    aws_iam_user.users[0].name,
    aws_iam_user.users[1].name
  ]

  group = aws_iam_group.group.name
}

resource "aws_iam_group_policy_attachment" "group_policy" {
  group      = aws_iam_group.group.name
  policy_arn = var.group_policy_arn
}

resource "aws_iam_user_policy_attachment" "user_policy" {
  user       = aws_iam_user.users[2].name
  policy_arn = var.user_policy_arn
}
resource "aws_iam_user_login_profile" "login" {
  count = length(var.users)

  user = aws_iam_user.users[count.index].name

  password_reset_required = true
}
