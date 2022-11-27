# Restart a K3S Cluster

As in the introduction, one of the reasons for switching from Kind to K3S is the ability to be able to restart a K3S cluster. If I need to interrupt my Kubernetes-related work, I just shut down my computer, the one being the host of the K3S virtual machines. When I later restart the computer, all I have to do to restart the K3S cluster and restore it to its previous state is to restart the virtual machines of the ter with the following two commands:
```
multipass start k3s-master
multipass start k3s-agent
```

# example deploy a nodejs app to k3s cluster
./nodejs_app