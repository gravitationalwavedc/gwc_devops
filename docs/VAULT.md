Hashicorp Vault
---------------
site: https://www.vaultproject.io/docs

Contents
--------
* [Deployment](###Deployment)
* [TODO](###TODO)

### Deployment
#### 1.1 Template Generation
##### Prerequisites
* Helm must be installed locally
* VERSION can be procured from [vault git release](https://github.com/hashicorp/vault-helm/releases)
* Commands must be executed in [vault helm directory](../apps/vault/helm)
##### Execution
```terminal
# Populate environment variables
RELEASE=`date +"%b%d%y" | tr '[:upper:]' '[:lower:]'`
HELMGITREPO=https://github.com/hashicorp/vault-helm/archive
VERSION=v0.5.0.tar.gz
HELMPARAM=--set="injector.enabled=true"

# Generate templates
helm template --namespace=vault $RELEASE $HELMGITREPO/$VERSION $HELMPARAM --output-dir .

# Templates are generated at ./vault/templates
```

#### 1.2 Update kustomization file
##### TBA
#### 1.3 Update Ingress rule
##### TBA
#### 1.4 Unseal Vault
##### TBA
#### 1.5 Secrets Integrator
1. Create Vault Secret Engine
2. Declare and initialise Vault Secrets
3. Declare and configure Vault Policy
4. Create Vault Access > Auth Methods > Kubernetes > Roles
5. 
### TODO
* [Secret Injection](https://www.hashicorp.com/blog/injecting-vault-secrets-into-kubernetes-pods-via-a-sidecar/)
* [Kubernetes Authentication Method](https://learn.hashicorp.com/vault/kubernetes/sidecar)