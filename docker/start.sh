#!/bin/sh
#
# Disable Strict Host checking for non interactive git clones



# echo $GCP_KEY >> /.gitlab-ci.json
# gcloud auth activate-service-account --key-file /.gitlab-ci.json

# gcloud config set project $GCP_PROJECT
# gcloud config set compute/zone $GCP_ZONE
# gcloud config set compute/region $GCP_REGION
# gcloud --quiet components update

# gcloud container clusters get-credentials $GCP_CLUSTER_PROJECT --region $GCP_REGION --project $GCP_PROJECT

exec ash