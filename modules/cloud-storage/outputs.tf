output "bucket_url" {
  description = "The self link of the GCS bucket"
  value       = google_storage_bucket.main.self_link
}

output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.main.name
}

output "bucket_self_link" {
  description = "The self link of the GCS bucket"
  value       = google_storage_bucket.main.self_link
}
