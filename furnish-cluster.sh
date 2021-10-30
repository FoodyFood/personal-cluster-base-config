#!/bin/bash

printf "Add Helm Chart Repos"
helm repo add jetstack https://charts.jetstack.io
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update

printf "Installing NGINX Ingress"
helm install nginx nginx-stable/nginx-ingress -n nginx --set controller.kind=daemonset --create-namespace


printf "Installing Cert Manager"
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.1.0/cert-manager.crds.yaml
helm install cert-manager --namespace cert-manager jetstack/cert-manager --create-namespace

kubectl create -f ./cert-manager-issuers.yaml --namespace cert-manager

