export PROJECT_ID=project-id

docker build -t gcr.io/nice-virtue-305620/hello-app:v1 .

docker run --rm -p 8080:8080 gcr.io/nice-virtue-305620/hello-app:v1

gcloud services enable containerregistry.googleapis.com

gcloud auth configure-docker

docker push gcr.io/nice-virtue-305620/hello-app:v1

gcloud config set project nice-virtue-305620

#I just picked the first one
gcloud compute zones list

gcloud config set compute/zone us-east1-b

gcloud container clusters create hello-cluster

