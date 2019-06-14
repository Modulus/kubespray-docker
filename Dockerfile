FROM python:3.7



RUN git clone https://github.com/kubernetes-sigs/kubespray.git 
# --single-branch --branch release-2.7 

WORKDIR kubespray
RUN git checkout release-2.7 && rm /kubespray/inventory/local/hosts.ini

VOLUME ["/kubespray/inventory/local"]

RUN pip install -r requirements.txt


