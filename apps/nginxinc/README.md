# https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-manifests/
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/ns-and-sa.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/default-server-secret.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/vs-definition.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/vsr-definition.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/ts-definition.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/rbac/rbac.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/deployment/nginx-ingress.yaml
curl -L -O https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/daemon-set/nginx-ingress.yaml

# ConfigMap should be downloaded only to act as a template
curl -L https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/master/deployments/common/nginx-config.yaml -o template.configmap.yaml