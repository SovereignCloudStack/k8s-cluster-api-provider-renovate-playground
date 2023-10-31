#!/usr/bin/env bash
KIND_VERSION=v0.19.0 # renovate: datasource=github-releases depName=kubernetes-sigs/kind
sudo wget -O /usr/local/bin/kind https://github.com/kubernetes-sigs/kind/releases/download/${KIND_VERSION}/kind-linux-amd64
sudo chmod +x /usr/local/bin/kind
kind create cluster

