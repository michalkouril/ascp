FROM ubuntu:20.04

RUN useradd -m aspera
RUN apt-get update 
RUN apt-get install -y wget

RUN su - aspera -c 'wget https://d3gcli72yxqn2z.cloudfront.net/downloads/connect/latest/bin/ibm-aspera-connect_4.2.2.135_linux.tar.gz'
RUN su - aspera -c 'tar -xvzf ibm-aspera-connect_4.2.2.135_linux.tar.gz'
RUN su - aspera -c ./ibm-aspera-connect_4.2.2.135_linux.sh

ENV PATH=/home/aspera/.aspera/connect/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
USER aspera
