#!/bin/bash

# Delete elastic search
kubectl delete -f elasticsearch-deployment.yaml
kubectl delete -f elasticsearch-service.yaml

# Delete kibana
kubectl delete -f kibana-deployment.yaml
kubectl delete -f kibana-service.yaml

# Delete logstash
kubectl delete -f logstash-deployment.yaml
kubectl delete -f logstash-service.yaml

# Delete configuration's
kubectl delete configMap logstash-config
kubectl delete -f kibana-configmap.yaml


