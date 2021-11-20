output "samuel_murillo" {
  value     = module.samuel_murillo
  sensitive = true
}

output "reviewer" {
  value     = module.reviewer
  sensitive = true

}

output "admin_role_arn" {
  value = module.admin_role.iam_role_arn
}
