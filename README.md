# Personal Cluster Base Config

This is a short script that installs the bare necessities in a cluster.

If you are to use this for your own cluster, change the email address in the cert-manager-issuers.yaml to your own.

<br>

### Repositories In The Series

This series of repositories brings you from creating a cluster through to hsoting code-kitchen yourself as well as anything else you can dream of building in code-kitchen.

Make your own cluster: [personal-cluster](https://github.com/FoodyFood/personal-cluster) \
Configure the cluster: [personal-cluster-base-config](https://github.com/FoodyFood/personal-cluster-base-config) \
Build code-kitchen: [code-kitchen-build](https://github.com/FoodyFood/code-kitchen-build) \
Deploy code-kitchen to your cluster: [code-kitchen-deploy](https://github.com/FoodyFood/code-kitchen-deploy)

### Setting Up Your Cluster

Run the following to install the bare escentials in your newly made cluster

```bash
./furnish-cluster.sh
```

### Installed charts

nginx-stable/nginx-ingress

jetstack/cert-manager

<br>

### Installed CRDs

letsencrypt-prod

letsencrypt-staging