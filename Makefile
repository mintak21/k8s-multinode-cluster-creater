NAME=multi

.PHONY: setup create delete

setup:
	sh scripts/setup.sh

create:
	kind create cluster --config manifests/kind/multi-node.yml --name ${NAME}

delete:
	kind delete cluster --name ${NAME}
