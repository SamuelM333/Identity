module "admin_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 4.7"

  role_name           = "AdministratorRole"
  trusted_role_arns   = [var.principal]
  create_role         = true
  attach_admin_policy = true
  role_requires_mfa   = false
}
