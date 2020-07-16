#!/bin/sh

kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml

kubectl create -f /vagrant/kubernetes/custom-resources.yaml