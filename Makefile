.PHONY: start
start:
	minikube start
	minikube addons enable ingress
	minikube addons enable storage-provisioner
	minikube addons enable default-storageclass
  minikube addons enable metrics-server

stop:
	minikube stop

delete:
	minikube delete
