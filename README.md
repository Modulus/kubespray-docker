# Run it

1. docker build kubespray .
2. docker run --mount type=bind,source=$(pwd)/inventory.ini,target=/kubespray/inventory/local/hosts.ini kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root cluster.yml

## If you require sudo pass
1.  docker run --mount type=bind,source=$(pwd)/inventory.ini,target=/kubespray/inventory/local/hosts.ini kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root --ask-become-pass cluster.yml


ansible-playbook -i inventory/mycluster/hosts.yml --become --become-user=root cluster.yml
## Documentation
https://kubespray.io/#/

## Source git repo
https://github.com/kubernetes-sigs/kubespray