terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "cloud-sql/production"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
  region  = var.region
}

resource "google_sql_database_instance" "primary" {
  name                = var.instance_name
  database_version    = var.database_version
  region              = var.region
  deletion_protection = true

  settings {
    tier      = var.tier
    disk_size = var.disk_size

    backup_configuration {
      enabled                        = true
      start_time                     = "03:00"
      point_in_time_recovery_enabled = true
    }

    maintenance_window {
      day  = 7
      hour = 3
    }

    ip_configuration {
      ipv4_enabled = true
    }

    database_flags {
      name  = "log_checkpoints"
      value = "on"
    }
  }
}

resource "google_sql_database" "main" {
  name     = var.database_name
  instance = google_sql_database_instance.primary.name
}
