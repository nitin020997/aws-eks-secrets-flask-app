data "aws_secretsmanager_secret" "db_creds" {
  name = var.secret_name
}

data "aws_secretsmanager_secret_version" "db_creds_version" {
  secret_id = data.aws_secretsmanager_secret.db_creds.id
}

locals {
  db_creds = jsondecode(data.aws_secretsmanager_secret_version.db_creds_version.secret_string)
}