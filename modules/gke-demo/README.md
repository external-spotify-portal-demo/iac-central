# demo

Demo cluster

## Configuration

| Parameter       | Value                        |
| --------------- | ---------------------------- |
| **Region**      | `europe-west1`       |
| **Environment** | `development`  |
| **Owner**       | `user:default/vinzscam`        |
| **Project**     | `spotify-portal-public-demo` |

## Connecting to the Cluster

```bash
gcloud container clusters get-credentials demo \
  --region europe-west1 \
  --project spotify-portal-public-demo
```
