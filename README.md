```
docker run -d --name gcloud --env GCP_PROJECT={GCP_PROJECT} --env GCP_ZONE={GCP_ZONE} --env GCP_REGION={GCP_REGION} --env GCP_CLUSTER_PROJECT={GCP_CLUSTER_PROJECT} --env GCP_KEY={GCP_KEY} --restart=always tasslin/gcloud

docker run -d --name gcloud --env-file .env.cicd --restart=always tasslin/gcloud
```
