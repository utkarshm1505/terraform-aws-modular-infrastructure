output "user_names" {
  value = aws_iam_user.users[*].name
}

output "group_name" {
  value = aws_iam_group.group.name
}
output "user_passwords" {
  value     = aws_iam_user_login_profile.login[*].password
  sensitive = true
}
output "login_link" {
  value = "https://signin.aws.amazon.com/console"
}
