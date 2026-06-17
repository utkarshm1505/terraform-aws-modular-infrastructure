variable "users" {
  type = list(string)
}

variable "group_name" {
  type = string
}

variable "group_policy_arn" {
  type = string
}

variable "user_policy_arn" {
  type = string
}