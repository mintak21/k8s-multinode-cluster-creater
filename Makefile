KUBERNETES_VERSION=1.18.0

.PHONY: setup create_multi_node_cluster create_single_node_cluster delete_multi_node_cluster delete_single_node_cluster

setup:
	sh scripts/setup.sh

test:
	kubeval -d ./manifests -v ${KUBERNETES_VERSION} | sort

create_multi_node_cluster:
	kind create cluster --config manifests/kind/multi-node.yaml --name multi-node

create_single_node_cluster:
	kind create cluster --config manifests/kind/single-node.yaml --name single-node

delete_multi_node_cluster:
	kind delete cluster --name multi-node

delete_single_node_cluster:
	kind delete cluster --name single-node
