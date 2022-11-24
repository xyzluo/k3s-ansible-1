#!/bin/bash

multipass delete k3s-master-2 k3s-worker-1 k3s-worker-2

# Permanently delete your instances
multipass purge
