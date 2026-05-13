terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.30.0"
    }
  }

  backend "gcs" {
    bucket = "spotify-portal-public-demo-terraform"
    prefix = "memorystore-redis/production"
  }
}

provider "google" {
  project = "spotify-portal-public-demo"
  region  = var.region
}

resource "google_redis_instance" "main" {
  name                    = var.instance_name
  region                  = var.region
  memory_size_gb          = var.memory_size_gb
  redis_version           = var.redis_version
  tier                    = var.tier
  auth_enabled            = true
  transit_encryption_mode = "SERVER_AUTHENTICATION"
  display_name            = "${var.instance_name} Redis Instance"
}
