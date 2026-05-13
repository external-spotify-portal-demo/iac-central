# Memorystore Redis Module

Terraform module for provisioning a Google Cloud Memorystore Redis instance.

Provides a managed Redis instance with HA support, authentication, and in-transit encryption.

Defaults to a STANDARD_HA tier instance in europe-west1 with Redis 7.0. Configure via variables in `variables.tf`.
