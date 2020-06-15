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
helm template helm-solr incubator/solr \
--set javaMem='-Xms512m -Xmx1g' \
--set resources.requests.memory="512Mi" \
-n solr --output-dir .
```