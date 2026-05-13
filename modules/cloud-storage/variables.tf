variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
  default     = "spotify-demo-storage"
}

variable "location" {
  description = "The location of the GCS bucket"
  type        = string
  default     = "EU"
}

variable "storage_class" {
  description = "The storage class of the GCS bucket"
  type        = string
  default     = "STANDARD"
}

variable "retention_days" {
  description = "Number of days before objects are deleted by lifecycle rule"
  type        = number
  default     = 90
}
