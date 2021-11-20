module "admin_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 4.7"

  role_name = "AdministratorRole"

  trusted_role_arns = [
    module.samuel_murillo.iam_user_arn,
    module.reviewer.iam_user_arn
  ]

  create_role         = true
  attach_admin_policy = true

}
