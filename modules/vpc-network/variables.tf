variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "main-vpc"
}

variable "region" {
  description = "GCP region for the subnet"
  type        = string
  default     = "europe-west1"
}

variable "subnet_cidr" {
  description = "Primary CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/20"
}

variable "pods_cidr" {
  description = "Secondary CIDR range for GKE pods"
  type        = string
  default     = "10.4.0.0/14"
}

variable "services_cidr" {
  description = "Secondary CIDR range for GKE services"
  type        = string
  default     = "10.8.0.0/20"
}
