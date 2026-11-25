output "database_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "database_name" {
  value = aws_db_instance.main.db_name
}

output "master_secret_arn" {
  value = aws_db_instance.main.master_user_secret[0].secret_arn
}

output "security_group_id" {
  value = aws_security_group.rds.id
}