#!/bin/bash
kubectl apply -f ./.infrastructure/namespace.yml
kubectl apply -f ./.infrastructure/statefulSet-service.yml -n mysql
kubectl apply -f ./.infrastructure/statefulSet-secret.yml -n mysql
kubectl apply -f ./.infrastructure/statefulSet-configMap.yml -n mysql
kubectl apply -f ./.infrastructure/statefulSet.yml -n mysql
kubectl apply -f ./.infrastructure/pv.yml
kubectl apply -f ./.infrastructure/pvc.yml
kubectl apply -f ./.infrastructure/clusterIp.yml
kubectl apply -f ./.infrastructure/nodeport.yml -n todoapp
kubectl apply -f ./.infrastructure/secret.yml -n todoapp
kubectl apply -f ./.infrastructure/configMap.yml
kubectl apply -f ./.infrastructure/hpa.yml
kubectl apply -f ./.infrastructure/deployment.yml -n todoapp