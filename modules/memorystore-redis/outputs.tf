output "host" {
  description = "The IP address of the Redis instance"
  value       = google_redis_instance.main.host
}

output "port" {
  description = "The port of the Redis instance"
  value       = google_redis_instance.main.port
}

output "auth_string" {
  description = "The authentication string for the Redis instance"
  value       = google_redis_instance.main.auth_string
  sensitive   = true
}
