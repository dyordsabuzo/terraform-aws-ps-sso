variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-southeast-1"
}

variable "permissions_list" {
  type = list(object({
    name             = string
    description      = string
    session_duration = string
    managed_policies = list(string)
    aws_accounts     = list(string)
    sso_groups       = list(string)
  }))
  description = "List of permission set properties"
}
