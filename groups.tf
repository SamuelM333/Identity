module "iam_group_with_assumable_roles_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-assumable-roles-policy"
  version = "~> 4.7"

  name = "AdministratorGroup"

  assumable_roles = [
    module.admin_role.iam_role_arn
  ]

  group_users = [
    module.samuel_murillo.iam_user_arn,
    module.reviewer.iam_user_arn
  ]
}
