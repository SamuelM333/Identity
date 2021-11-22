output "samuel_murillo" {
  value = {
    iam_access_key_id : module.samuel_murillo.iam_access_key_id,
    iam_access_key_encrypted_secret : module.samuel_murillo.iam_access_key_encrypted_secret,
    iam_user_login_profile_encrypted_password : module.samuel_murillo.iam_user_login_profile_encrypted_password,
    keybase_secret_key_decrypt_command : module.samuel_murillo.keybase_secret_key_decrypt_command

  }
}

output "reviewer" {
  value = {
    iam_access_key_id : module.reviewer.iam_access_key_id,
    iam_access_key_encrypted_secret : module.reviewer.iam_access_key_encrypted_secret,
    iam_user_login_profile_encrypted_password : module.reviewer.iam_user_login_profile_encrypted_password
    keybase_secret_key_decrypt_command : module.reviewer.keybase_secret_key_decrypt_command
  }
}

output "admin_role_arn" {
  value = module.admin_role.iam_role_arn
}
