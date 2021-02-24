kubectl delete service rest-deployment-service

gcloud container clusters delete hello-cluster

gcloud container images delete gcr.io/nice-virtue-305620/rest-deployment-service:v1  --force-delete-tags --quiet
gcloud container images delete gcr.io/nice-virtue-305620/rest-deployment-service:v2  --force-delete-tags --quiet
gcloud container images delete gcr.io/nice-virtue-305620/rest-deployment-service:v3  --force-delete-tags --quiet

kubectl get deployments --all-namespaces

kubectl delete -n default deployment hello-app

kubectl delete pods curl