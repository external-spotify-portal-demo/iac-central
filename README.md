# Central IaC Repository

Central repository for managing GCP infrastructure modules via Terraform. New modules are added through a Backstage template that creates a Pull Request.

## Adding a New Module

Use the **GCP - GKE (Kubernetes)** template in Backstage to add a new GKE cluster module. The template will create a Pull Request with the Terraform configuration, which gets applied automatically after merge.

All modules are located in the `modules/` directory.

## CI/CD

- **Pull Requests:** Terraform plan runs for any changed modules
- **Merge to main:** Terraform apply runs automatically for changed modules

## Repository Structure

```
.
├── template.yaml          # Backstage scaffolder template
├── skeleton/              # Template skeleton for new GKE modules
├── modules/               # Terraform modules (one directory per resource)
│   ├── vpc-network/
│   ├── cloud-sql/
│   ├── cloud-storage/
│   ├── memorystore-redis/
│   └── gke-production/
└── .github/workflows/     # CI/CD pipelines
```
