docker build kubespray .
docker run --mount type=bind,source=$(pwd)/inventory.ini,target=/kubespray/inventory/local/hosts.ini kubespray ansible-playbook -i inventory/local/hosts.ini cluster.yml