terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "${{ values.component_id }}"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  enable_autopilot = true

  network    = var.network
  subnetwork = var.subnetwork

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }

  ip_allocation_policy {}

  release_channel {
    channel = "REGULAR"
  }

  resource_labels = {
    managed_by  = "terraform"
    environment = "production"
    team        = "${{ values.owner | replace('group:', '') }}"
  }

  deletion_protection = true
}
