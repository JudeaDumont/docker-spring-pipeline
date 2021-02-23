kubectl delete service hello-app-service

gcloud container clusters delete hello-cluster

gcloud container images delete gcr.io/nice-virtue-305620/hello-app:v1  --force-delete-tags --quiet
gcloud container images delete gcr.io/nice-virtue-305620/hello-app:v2  --force-delete-tags --quiet
gcloud container images delete gcr.io/nice-virtue-305620/hello-app:v3  --force-delete-tags --quiet

kubectl get deployments --all-namespaces

kubectl delete -n default deployment hello-app