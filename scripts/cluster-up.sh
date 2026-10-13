#!/usr/bin/env bash
set -euo pipefail

k3d cluster create lab \
  --agents 2 \
  --k3s-arg "--disable=traefik@server:*" \
  -p "8080:80@loadbalancer"

kubectl get nodes
