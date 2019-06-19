FROM python:3.7



RUN git clone https://github.com/kubernetes-sigs/kubespray.git 

WORKDIR kubespray

RUN git checkout tags/v2.10.4 && rm /kubespray/inventory/local/hosts.ini

VOLUME ["/kubespray/inventory/local"]

RUN pip install -r requirements.txt


