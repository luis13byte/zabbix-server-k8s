# zabbix-server-k8s
Zabbix server/web deploy on Kubernetes

## Microk8s, for local Kubernetes
We need to have snapd installed and proceed to install microk8s and enable the necessary addons.

~~~
sudo snap install microk8s --classic
~~~

And we will install required plugins.

~~~
sudo microk8s enable metrics-server dns storage
~~~

## Considerations
The rest is taken care of by the yaml manifests and a correct directory structure on the node for volume assembly.
