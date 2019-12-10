resource "aws_organizations_account" "organizations_account" {
  name                       = var.organizations_account_name
  email                      = "${var.organizations_account_name}@blueharvest.site"
  role_name                  = "master_access"
  iam_user_access_to_billing = "ALLOW"
  parent_id                  = var.parent_ou
}

module "iam_users_module" {
  source                   = "LoreM9/iam-users-module/aws"
  version                  = "0.0.1"

  # insert the 3 required variables here
  organizations_account_id = aws_organizations_account.organizations_account.id
  usernames                = var.iam_usernames
  pgp_key                  = "terraform.gpg.pub"
}

