.PHONY: start stop delete deploy undeploy hosts

minikube_ip := $(shell minikube ip)
default: help;

help:
	@echo "start - start minikube with necessary addons"
	@echo "deploy - deploy all aps (elastic, mysql, wordpress, etc...)"
	@echo "undeploy - remove all apps"
	@echo "stop - stop minikube"
	@echo "delete - delete minikube"
	@echo "hosts - show settings to add to /etc/hosts"
	@echo "help - show help (default)"


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

hosts:
	@echo "## add following lines to /etc/hosts:"
	@echo $(minikube_ip) kibana.example.com
	@echo $(minikube_ip) wp01.example.com
	@echo $(minikube_ip) wp02.example.com
