#Build a new image and push it
docker build -t gcr.io/nice-virtue-305620/simplerestcontrollertest:latest .

docker push gcr.io/nice-virtue-305620/simplerestcontrollertest:latest

kubectl set image deployment/simplerestcontrollertest simplerestcontrollertest=gcr.io/nice-virtue-305620/simplerestcontrollertest:latest

watch kubectl get pods

wget -p http://rest-deployment-service

curl http://rest-deployment-service:8000


# wget -O - http://34.75.37.66:8000