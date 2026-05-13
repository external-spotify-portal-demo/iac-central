terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "cloud-storage/production"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
}

resource "google_storage_bucket" "main" {
  name                        = var.bucket_name
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = true
  force_destroy               = false

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = var.retention_days
    }
  }
}
