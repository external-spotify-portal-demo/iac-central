output "connection_name" {
  description = "The connection name of the Cloud SQL instance"
  value       = google_sql_database_instance.primary.connection_name
}

output "ip_address" {
  description = "The IP address of the Cloud SQL instance"
  value       = google_sql_database_instance.primary.ip_address
  sensitive   = true
}

output "database_name" {
  description = "The name of the database"
  value       = google_sql_database.main.name
}
