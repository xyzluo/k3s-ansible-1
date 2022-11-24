#!/bin/bash

for f in 1; do
    multipass launch \
    --cpus 2 --mem 2048M --disk 5G \
    --name k3s-master-$f --cloud-init cloud-init.yaml \
    18.04
done

for f in 1 ; do
    multipass launch \
    --cpus 1 --mem 2048M --disk 5G \
    --name k3s-worker-$f --cloud-init cloud-init.yaml \
    18.04
done

multipass list
multipass info k3s-master-1
