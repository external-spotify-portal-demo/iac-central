# ${{ values.component_id }}

${{ values.description }}

## Configuration

| Parameter       | Value                        |
| --------------- | ---------------------------- |
| **Region**      | `${{ values.region }}`       |
| **Environment** | `${{ values.environment }}`  |
| **Owner**       | `${{ values.owner }}`        |
| **Project**     | `spotify-portal-public-demo` |

## Connecting to the Cluster

```bash
gcloud container clusters get-credentials ${{ values.component_id }} \
  --region ${{ values.region }} \
  --project spotify-portal-public-demo
```
