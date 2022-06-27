#!/bin/bash

kubectl -n argocd  get --kubeconfig /tmp/kubeconfig svc arcgocd-argocd-server -o jsonpath='{.status.loadBalancer.ingress[0]}'