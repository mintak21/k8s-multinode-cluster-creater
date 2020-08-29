#!/bin/sh
brew install docker kubernetes-cli kubectx kind kubeval
curl -L https://raw.githubusercontent.com/docker/docker-ce/$(docker --version | awk -F' ' '{print $3}' | cut -c 1-5)/components/cli/contrib/completion/bash/docker >$(brew --prefix)/etc/bash_completion.d/docker
kubectl completion bash >$(brew --prefix)/etc/bash_completion.d/kubectl
kind completion bash >$(brew --prefix)/etc/bash_completion.d/kind
source ~/.bash_profile
