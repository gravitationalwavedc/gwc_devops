# [PROMETHEUS](https://grafana.com/)
=================================
- [Prometheus Helm](https://github.com/helm/charts/tree/master/stable/prometheus)

## Installation
```bash
# Add CNCF Repo
helm repo add stable https://kubernetes-charts.storage.googleapis.com/ 

# Confirm 
helm search repo prometheus
```

## Initialisation - Elastic
```bash
# Prometheus
helm template prometheus-11-6-0 stable/prometheus \
-n prometheus \
--set replicas=1 \
--set service.type=ClusterIP \
--set server.statefulSet.enabled=true \
--output-dir .
```