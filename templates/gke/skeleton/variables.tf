variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "${{ values.component_id }}"
}

variable "region" {
  description = "GCP region for the cluster"
  type        = string
  default     = "${{ values.region }}"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "${{ values.environment }}"
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "spotify-portal-public-demo"
}

variable "network" {
  description = "VPC network name"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "VPC subnetwork name"
  type        = string
  default     = "default"
}

variable "master_ipv4_cidr_block" {
  description = "CIDR block for the GKE master"
  type        = string
  default     = "172.16.0.0/28"
}

variable "release_channel" {
  description = "GKE release channel"
  type        = string
  default     = {% if values.environment == "production" %}"STABLE"{% elif values.environment == "staging" %}"REGULAR"{% else %}"RAPID"{% endif %}
}
