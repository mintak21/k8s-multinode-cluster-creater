NAME=cluster

.PHONY: setup create_multi_node_cluster create_single_node_cluster delete

setup:
	sh scripts/setup.sh

create_multi_node_cluster:
	kind create cluster --config manifests/kind/multi-node.yml --name ${NAME}

create_single_node_cluster:
	kind create cluster --config manifests/kind/single-node.yml --name ${NAME}

delete:
	kind delete cluster --name ${NAME}
