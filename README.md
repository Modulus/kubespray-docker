# Run it

1. docker build -t kubespray .
2. docker run -v $(pwd)/inventory:/kubespray/inventory/local/ kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root cluster.yml

## If you require sudo pass
1.  docker run -v $(pwd)/inventory:/kubespray/inventory/local/ --mount type=bind,source=$(echo ~)/.ssh/id_rsa,target=/root/.ssh/id_rsa kubespray ansible-playbook -i inventory/local/hosts.ini --become --become-user=root --ask-become-pass cluster.yml

## Interaktiv
1. docker run -it -v $(pwd)/inventory:/kubespray/inventory/local/  --mount type=bind,source=$(echo ~)/.ssh/id_rsa,target=/root/.ssh/id_rsa kubespray bash
2. eval "$(ssh-agent -s)" 
3. ssh-add
4. ansible -i inventory/local/hosts.ini all -m ping
5. ansible-playbook -i inventory/local/hosts.ini --become --become-user=root --ask-become-pass cluster.yml

## Documentation
https://kubespray.io/#/

## Source git repo
https://github.com/kubernetes-sigs/kubespray


### NB
if ansible fails with {"attempts": 4, "changed": false, "msg": "No package matching 'aufs-tools' is available"}
you need to run "sudo add-apt-repository universe"

1. Alt: ansible -i inventory/local/hosts.ini -m command -a "add-apt-repository universe"  k8s-cluster --become --become-user root --ask-sudo-pass --user superuser
