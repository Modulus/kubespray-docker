FROM python:3.7


WORKDIR /

RUN git clone https://github.com/kubernetes-sigs/kubespray.git # && ssh-keygen -t rsa -N "" -f ~/.ssh/dead_key

WORKDIR /kubespray



RUN git checkout v2.10.4 && rm /kubespray/inventory/local/hosts.ini

VOLUME ["/kubespray/inventory/local", "/root/.ssh"]

CMD  cat /root/.ssh/id_rsa

RUN pip install -r requirements.txt


