output "organizations_account_id" {
  value = aws_organizations_account.organizations_account.*.id
}
