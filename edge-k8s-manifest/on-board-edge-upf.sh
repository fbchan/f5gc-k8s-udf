#!/bin/sh

kubectl -n f5gc apply -k f5gc-upf

k9s -n f5gc
