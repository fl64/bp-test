.PHONY: start stop delete
start:
	minikube start
	minikube addons enable ingress
	minikube addons enable storage-provisioner
	minikube addons enable default-storageclass
	minikube addons enable metrics-server

deploy:
	kubectl apply -k apps

undeploy:
	kubectl delete -k apps

stop:
	minikube stop

delete:
	minikube delete
