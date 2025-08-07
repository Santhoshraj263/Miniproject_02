#!/bin/bash

echo "Updating kubeconfig..."
aws eks update-kubeconfig --region ap-south-1 --name mydeploycluster

echo "Deploying to EKS..."
kubectl apply -f /home/ec2-user/mini02/deployment.yml
kubectl apply -f /home/ec2-user/mini02/service.yml
