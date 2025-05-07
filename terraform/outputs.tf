output "db_username" {
  value     = local.db_creds.username
  sensitive = true
}

output "db_password" {
  value     = local.db_creds.password
  sensitive = true
}