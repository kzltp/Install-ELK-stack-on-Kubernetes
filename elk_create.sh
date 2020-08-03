#!/bin/bash

# Config maps Create
kubectl create configmap logstash-config --from-file=logstash.conf
kubectl apply -f kibana-configmap.yaml

# Deploy Elasticsearch
kubectl apply -f elasticsearch-deployment.yaml
kubectl apply -f elasticsearch-service.yaml

# Deploy Kibana
kubectl apply -f kibana-deployment.yaml
kubectl apply -f kibana-service.yaml

# Deploy logstash
kubectl apply -f logstash-deployment.yaml
kubectl apply -f logstash-service.yaml

