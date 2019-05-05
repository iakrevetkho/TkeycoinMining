FROM ubuntu:18.04

# Create user admin
RUN useradd -ms /bin/bash  admin
USER admin
WORKDIR /home/admin

RUN apt-get update -y

RUN apt-get install sudo -y

RUN apt-get install wget -y

RUN wget https://tkeycoin.com/TkeycoinSetup.install

RUN sh TkeycoinSetup.install

RUN tkeycoind &
