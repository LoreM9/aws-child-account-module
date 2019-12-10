variable "parent_ou" {
  type = string
}

variable "organizations_account_name" {
  type = string
}

variable "pgp_key" {
  type = string
}

variable "iam_usernames" {
  type = list(string)
}
