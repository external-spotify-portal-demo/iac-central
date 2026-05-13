# Cloud Storage Module

Terraform module for provisioning a Google Cloud Storage bucket with versioning and lifecycle policies.

Configurable bucket name, location, storage class, and retention period via input variables.

Designed for use within the central IaC repository for the spotify-portal-public-demo project.

Usage: reference this module from a root configuration and provide the required variables.
