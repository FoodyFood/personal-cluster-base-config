#!/bin/bash

printf "\nAdd Helm Chart Repos\n\n"
helm repo add jetstack https://charts.jetstack.io
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
printf "\n\n"


printf "Installing NGINX Ingress\n\n"
helm install nginx nginx-stable/nginx-ingress -n nginx --set controller.kind=daemonset --create-namespace
printf "\n\n"


printf "Installing Cert Manager\n\n"
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.crds.yaml
helm install cert-manager --namespace cert-manager jetstack/cert-manager --create-namespace
printf "\n\n"
kubectl create -f ./cert-manager-issuers.yaml --namespace cert-manager
printf "\n\n"
