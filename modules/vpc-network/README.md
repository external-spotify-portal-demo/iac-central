# vpc-network

Terraform module that provisions a GCP VPC network with a subnet configured for GKE VPC-native clusters.
It creates a custom-mode VPC, a regional subnet with a primary CIDR, and two secondary ranges for pods and services.
Targets the `spotify-portal-public-demo` project with state stored in GCS.
Usage: configure variables for network name, region, and CIDR ranges, then run `terraform apply`.
