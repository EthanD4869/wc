FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install apt-utils python3 -y python3-pip -y vim -y

RUN mkdir -p /root/.pip

ADD pip.conf /root/.pip/

COPY sensitive-word-detection /root/sensitive-word-detection

RUN cd /root/sensitive-word-detection && pip3 install -r requirements.txt

WORKDIR /root/sensitive-word-detection

CMD ["python3", "server.py"]
