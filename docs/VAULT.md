[Hashicorp Vault](https://www.vaultproject.io/docs)
---

## 1. Installation
### 1.1 Template Generation
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

###### TODO
* [Secret Injection](https://www.hashicorp.com/blog/injecting-vault-secrets-into-kubernetes-pods-via-a-sidecar/)
