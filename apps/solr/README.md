# APACHE SOLR
===
## References
- [Helm Github repo](https://github.com/lucidworks/solr-helm-chart/tree/master/solr)

```bash
# Add helm repo
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator

# Search solr chart
helm search repo solr
NAME            CHART VERSION   APP VERSION     DESCRIPTION                                       
incubator/solr  1.5.2           8.4.0           A helm chart to install Apache Solr: http://luc...

# Generate solr templates
helm template incubator-1-5-2 incubator/solr \
--set javaMem='-Xms512m -Xmx1g' \
--set resources.requests.memory="512Mi" \
--set resources='"requests":{"cpu": "500m","memory": "512Mi"},"limits": {"cpu": "1G","memory":"1Gi"}' \
-n solr --output-dir .
```