# env

`GCP_PROJECT`
`GCP_ZONE`
`GCP_REGION`
`GCP_CLUSTER_PROJECT`
`GCP_KEY`

## Quickstart
```
docker run -d --name gcloud --env GCP_PROJECT={GCP_PROJECT} --env GCP_ZONE={GCP_ZONE} --env GCP_REGION={GCP_REGION} --env GCP_CLUSTER_PROJECT={GCP_CLUSTER_PROJECT} --env GCP_KEY={GCP_KEY} --restart=always tasslin/gcloud

docker run -d --name gcloud --env-file .env.cicd --restart=always tasslin/gcloud
```

```
docker exec -it gcloud ash
```

```
echo $GCP_KEY >> /.gitlab-ci.json
gcloud auth activate-service-account --key-file /.gitlab-ci.json
```

#### connect to gke

```
gcloud container clusters get-credentials $GCP_CLUSTER_PROJECT --region $GCP_REGION --project $GCP_PROJECT
```