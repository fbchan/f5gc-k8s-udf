#!/bin/sh

kubectl delete -k f5gc-nrf
kubectl delete -k f5gc-amf
kubectl delete -k f5gc-smf
kubectl delete -k f5gc-pcf
kubectl delete -k f5gc-ausf
kubectl delete -k f5gc-nssf
kubectl delete -k f5gc-udr
kubectl delete -k f5gc-udm
kubectl delete -k f5gc-upf
kubectl delete -k f5gc-webui
kubectl delete -k f5gc-gnbsim
#kubectl delete -k f5gc-n6dummy
#kubectl delete -k f5gc-n6nettools

kubectl delete  -f ./00_namespace.yaml


