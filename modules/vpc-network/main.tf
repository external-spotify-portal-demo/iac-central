terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "vpc-network/production"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
  region  = var.region
}

resource "google_compute_network" "main" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "main" {
  name          = "${var.network_name}-subnet"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.main.id

  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = var.pods_cidr
  }

  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = var.services_cidr
  }
}
