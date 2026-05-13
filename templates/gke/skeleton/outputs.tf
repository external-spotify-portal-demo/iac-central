output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE cluster name for ${{ values.component_id }}"
}

output "cluster_endpoint" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE cluster endpoint for ${{ values.component_id }}"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
  description = "GKE cluster CA certificate for ${{ values.component_id }}"
  sensitive   = true
}

output "cluster_location" {
  value       = google_container_cluster.primary.location
  description = "GKE cluster location for ${{ values.component_id }}"
}

output "connect_command" {
  value       = "gcloud container clusters get-credentials ${{ values.component_id }} --region ${{ values.region }} --project spotify-portal-public-demo"
  description = "Command to connect to the cluster"
}
