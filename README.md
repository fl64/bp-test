# pb test

## Task

- ✅ Build a ELK Cluster on kubernetes cluster on elk namespace. The cluster should include 1 ElasticSearch, 1 Kibana
- ✅ Publish the Kibana at url https://kibana.example.com
- ✅ Create Centeralize MySQL Server running on the Kube (Single node) on database namespace
- ✅ Create two namespaces for wordpress
- ✅ First wordpress with version 5.9.3 will publish as wp01.example.com on client-a namespace
- ✅ Sec Wordpress with version 5.8 will publish as wp02.wordpress on client-b namespace
- ✅ Setup autoscaler for wordpress container
- ✅ The logs from wordpress should written into elasticsearch

## How to start

- `make start` - start minikube with necessary addons
- `make deploy` - deploy all aps (elastic, mysql, wordpress, etc...)
- `make undeploy` - remove all apps
- `make stop` - stop minikube
- `make delete` - delete minikube
- `make hosts` - show settings to add to /etc/hosts
- `make help` - show help (default)


## Secrets

```
kubeseal --format yaml --scope cluster-wide --cert secrets/sealedsecrets.crt < apps/mysql/secret.yaml > apps/mysql/sealed-secrets.yaml

```
