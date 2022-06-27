#!/bin/bash

kubectl -n argocd get --kubeconfig /tmp/kubeconfig secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d