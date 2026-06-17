output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_count" {
  value = length(module.vpc.public_subnets)
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "iam_users" {
  value = module.iam.user_names
}

output "region" {
  value = var.region
}
output "iam_user_passwords" {
  value     = module.iam.user_passwords
  sensitive = true
}
output "login_url" {
  value = module.iam.login_link
}