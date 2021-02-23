#Build a new image and push it
docker build -t gcr.io/nice-virtue-305620/hello-app:v2 .

docker push gcr.io/nice-virtue-305620/hello-app:v3

kubectl set image deployment/hello-app hello-app=gcr.io/nice-virtue-305620/hello-app:v3

watch kubectl get pods