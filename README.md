# OverView
- Manifests to create multi-node cluster on local, using `kind`.
- Manifests to exercise k8s resources such as Service, Deployment, Ingress... and so on.

## Make Commands

|commands|description|
|:---|:---|
|setup|Install packages to use `kind`|
|create|create multi-node cluster by `kind`<br>1 master-node and 4 worker nodes, and worker node assigned several region, and zone<br>Arguments NAME: cluster name, default `multi`|
|delete|delete cluster<br>Arguments NAME: delete target cluster name, default `multi`|

# `kind` Basic Usage
## create cluster
```bash
$ kind create cluster --name {NAME} --wait 30s
# cluster-name -> kind-{NAME}
# create single-cluster

Creating cluster "sample-cluster" ...
 ✓ Ensuring node image (kindest/node:v1.17.0) 🖼
 ✓ Preparing nodes 📦
 ✓ Writing configuration 📜
 ✓ Starting control-plane 🕹️
 ✓ Installing CNI 🔌
 ✓ Installing StorageClass 💾
Set kubectl context to "kind-sample-cluster"
You can now use your cluster with:

kubectl cluster-info --context kind-sample-cluster

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
```


## delete cluster
```bash
$ kind delete cluster --name {NAME}
# delete cluster container/kubeconfig

Deleting cluster "sample-cluster" ...
```

# Choises of local kubernetes

- [Docker for Mac](https://docs.docker.com/docker-for-mac/)
  - :sunny: : only **1 click** to create cluster
  - :umbrella: : only 1 cluster
  - :umbrella: : cannot select k8s version

- [minikube](https://github.com/kubernetes/minikube)
  - :sunny: : support multi-cluster
  - :sunny: : googlable
  - :umbrella: : only single-node cluster

- [microk8s](https://github.com/ubuntu/microk8s)
  - :sunny: : **1-command deploy**
  - :sunny: : selectable version
  - :sunny: : support addons
  - :umbrella: : only single-node cluster

- [kind](https://kind.sigs.k8s.io/) (Kubernetes IN Docker)
  - :sunny: :support multi-cluster, multi-node-cluster
  - :zap: : using docker container as node
  - :umbrella: : googlability


[Reference slide](https://speakerdeck.com/masayaaoyama/cloudnativejp-09-kubernetes-in-docker-kind)

# k8s IDE
## [k8slens](https://k8slens.dev/)

![Screenshot](https://k8slens.dev/images/header-lens.png)
