# Run it

1. docker build kubespray .
2. docker run --mount type=bind,source=$(pwd)/inventory.ini,target=/kubespray/inventory/local/hosts.ini kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root cluster.yml

## If you require sudo pass
1.  docker run --mount type=bind,source=$(pwd)/inventory.ini,target=/kubespray/inventory/local/hosts.ini kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root --ask-become-pass cluster.yml


## Documentation
https://kubespray.io/#/

## Source git repo
https://github.com/kubernetes-sigs/kubespray


### NB
if ansible fails with {"attempts": 4, "changed": false, "msg": "No package matching 'aufs-tools' is available"}
you need to run "sudo add-apt-repository universe"

1. Alt: ansible -i inventory/local/hosts.ini -m command -a "add-apt-repository universe"  k8s-cluster --become --become-user root --ask-sudo-pass --user superuser
