# gke-production

Production GKE cluster for backend services.

## Configuration

| Parameter       | Value                        |
| --------------- | ---------------------------- |
| **Region**      | `europe-west1`               |
| **Environment** | `production`                 |
| **Owner**       | `group:backend`              |
| **Project**     | `spotify-portal-public-demo` |

## Connecting to the Cluster

```bash
gcloud container clusters get-credentials gke-production \
  --region europe-west1 \
  --project spotify-portal-public-demo
```
