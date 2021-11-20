module "admin_group" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-assumable-roles-policy"
  version = "~> 4.7"

  name = "AdministratorGroup"

  assumable_roles = [
    module.admin_role.iam_role_arn
  ]

  group_users = [
    module.samuel_murillo.iam_user_name,
    module.reviewer.iam_user_name
  ]
}
