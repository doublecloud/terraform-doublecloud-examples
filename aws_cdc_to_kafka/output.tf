// This will output the database endpoint
output "database_endpoint" {
  description = "The endpoint of the database"
  value       = aws_db_instance.cdc_database.address
}

// This will output the database port
output "database_port" {
  description = "The port of the database"
  value       = aws_db_instance.cdc_database.port
}
