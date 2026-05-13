output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE cluster name for demo"
}

output "cluster_endpoint" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE cluster endpoint for demo"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
  description = "GKE cluster CA certificate for demo"
  sensitive   = true
}

output "cluster_location" {
  value       = google_container_cluster.primary.location
  description = "GKE cluster location for demo"
}

output "connect_command" {
  value       = "gcloud container clusters get-credentials demo --region europe-west1 --project spotify-portal-public-demo"
  description = "Command to connect to the cluster"
}
