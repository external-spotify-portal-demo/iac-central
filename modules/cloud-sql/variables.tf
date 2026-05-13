variable "instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
  default     = "main-postgres"
}

variable "region" {
  description = "The GCP region for the Cloud SQL instance"
  type        = string
  default     = "europe-west1"
}

variable "tier" {
  description = "The machine tier for the Cloud SQL instance"
  type        = string
  default     = "db-custom-2-8192"
}

variable "database_version" {
  description = "The PostgreSQL version to use"
  type        = string
  default     = "POSTGRES_15"
}

variable "disk_size" {
  description = "The disk size for the Cloud SQL instance in GB"
  type        = number
  default     = 50
}

variable "database_name" {
  description = "The name of the database to create"
  type        = string
  default     = "app"
}
