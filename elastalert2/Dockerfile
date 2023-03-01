FROM python:3.11-slim-buster
#FROM jertel/elastalert2


RUN apt-get update -y && \
    apt-get install supervisor -y &&\
    apt-get install gcc libffi-dev musl-dev python3-dev openssl libssl-dev tzdata libmagic-dev cargo jq curl vim -y
#
RUN mkdir /opt/elastalert2
COPY . /opt/elastalert2/

RUN cd /opt/elastalert2 && \
    pip3 install setuptools wheel && \
    pip3 install elastalert2==2.10


RUN mkdir -p /var/log/supervisor
RUN chmod u+x /opt/elastalert2/run.sh

COPY supervisord.conf /etc/supervisor/supervisor.conf

WORKDIR /opt/elastalert2

ENTRYPOINT ["/opt/elastalert2/run.sh"]
