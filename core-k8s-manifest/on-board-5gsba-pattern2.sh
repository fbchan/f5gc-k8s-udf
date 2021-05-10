#!/bin/sh
kubectl apply  -f ./00_namespace.yaml

# SMF configuration for Pattern2
# Make sure Edge-UPF deployed
cp ./f5gc-smf/02_smf-configmap-edge-k8s-branchingUPF.yaml ./f5gc-smf/02_smf-configmap.yaml

kubectl apply -k f5gc-mongodb
kubectl apply -k f5gc-nrf
kubectl apply -k f5gc-amf
kubectl apply -k f5gc-smf
kubectl apply -k f5gc-pcf
kubectl apply -k f5gc-ausf
kubectl apply -k f5gc-nssf
kubectl apply -k f5gc-udr
kubectl apply -k f5gc-udm
kubectl apply -k f5gc-upf
kubectl apply -k f5gc-webui
kubectl apply -k f5gc-gnbsim


k9s -n f5gc
