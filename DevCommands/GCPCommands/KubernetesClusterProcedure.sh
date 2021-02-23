kubectl create deployment hello-app --image=gcr.io/nice-virtue-305620/hello-app:v1
kubectl scale deployment hello-app --replicas=3
kubectl autoscale deployment hello-app --cpu-percent=80 --min=1 --max=5

kubectl get pods

# this creates a k8s service
kubectl expose deployment hello-app --name=hello-app-service --type=LoadBalancer --port 80 --target-port 8080

kubectl get service

#34.75.46.135

