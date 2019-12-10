output "organizations_account_id" {
  value = aws_organizations_account.organizations_account.*.id
}
output "iam_users_passwords" {
  value = module.iam_users_module.password
}
