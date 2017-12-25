# Kubernetes cheat sheet

## Links

* [Hello Minikube](https://kubernetes.io/docs/tutorials/stateless-application/hello-minikube/)
* [K8s 101](https://kubernetes.io/docs/user-guide/walkthrough/)

## Managing the cluster

```
minikube start # Starts the local k8s cluster
minikube stop  # Stops the local k8s cluster

eval $(minikube docker-env) # Set up docker to build in the minikube host
eval $(minikube docker-env -u) # Reset docker
```

## Addons

```
minikube addons list # Lists the addons
minikube addons open dashboard # Opens the dashboard
```

## Managing containers

```
kubectl get pods # List the pods
kubectl get services # List the services
```

## Managing deployments

```
kubectl create -f hello-node-deployment.yml # Creates a deployment
kubectl get deployment # Lists deployments

# Scale deployment
kubectl scale deployment hello-node-deployment --replicas 5
```

## Managing services

```
kubectl create -f service.yml # Create a service
kubectl get services # List services
kubectl delete svc/hello-node-service # Delete a service
minikube service hello-node-service --url # Get the URL
```

