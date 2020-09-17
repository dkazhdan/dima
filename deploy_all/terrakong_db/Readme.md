# Installation of Kong Ingress with Grafana dashboard





This is a set of instructions on how to install and configure Kong ingress router with Konga UI, Grafana dashboard and Prometheus monitoring.

  







### Installation

To install Kong you need to be logged in to your google cloud account and have kubectl and terraform binaries in your PATH.

Install 

```sh
$ terraform init
$ terraform apply
Once the installation is finished , you need to forward ports for grafana and Konga

$ POD_NAME=$(kubectl get pods --namespace prometheus -l "app.kubernetes.io/name=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace prometheus port-forward $POD_NAME 3000

$ POD_NAME=$(kubectl get pods --namespace kong -l "app.kubernetes.io/name=konga" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace kong port-forward $POD_NAME 4000

```

Retrieve Grafana password.

```sh

$ kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
```
Login to your Grafana dashboard http://localhost:4000 and set as admin and set the password.

Login to Konga UI http://localhost:4000, open the connections tab and create a new connection pointing to http://kong-server-kong-admin:8001.

Configure your permanent routes to Konga and Grafana through Konga UI.

The Kong dashboard should already be configured , you can see it in the list of Grafana dashboards.





