module "samuel_murillo" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 4.7"

  name          = "samuel-murillo"
  force_destroy = false

  pgp_key = "keybase:samuelm333"

  password_reset_required = false
}

module "reviewer" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 4.7"

  name          = "reviewer"
  force_destroy = false

  pgp_key = "keybase:samuelm333"

  password_reset_required = false
}
