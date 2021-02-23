kubectl create deployment rest-deployment --image=gcr.io/nice-virtue-305620/simplerestcontroller:latest
kubectl scale deployment rest-deployment --replicas=1
kubectl autoscale deployment rest-deployment --cpu-percent=80 --min=1 --max=5

kubectl get pods

# this creates a k8s service
kubectl expose deployment rest-deployment --name=rest-deployment-service --type=LoadBalancer --port 8000 --target-port 8000

kubectl get service

#run an image on a cluster
kubectl run rest-deployment --image=gcr.io/nice-virtue-305620/simplerestcontrollertest:latest

kubectl exec --stdin --tty rest-deployment-7b7ff88586-dh8tq -- /bin/ash