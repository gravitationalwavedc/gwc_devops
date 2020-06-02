# https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-manifests/
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/ns-and-sa.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/default-server-secret.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/nginx-config.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/vs-definition.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/vsr-definition.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/common/ts-definition.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/rbac/rbac.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/deployment/nginx-ingress.yaml
curl -L -O https://github.com/nginxinc/kubernetes-ingress/tree/master/deployments/daemon-set/nginx-ingress.yaml

# cm.yaml for global default configuration