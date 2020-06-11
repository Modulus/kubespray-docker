FROM python:3.7


WORKDIR /

RUN git clone https://github.com/kubernetes-sigs/kubespray.git 
WORKDIR /kubespray



RUN git checkout v2.13.1 && rm -drf /kubespray/inventory/local/*

VOLUME ["/kubespray/inventory/local", "/root/.ssh"]

RUN pip install -r requirements.txt


