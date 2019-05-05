FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install wget -y

# Create user admin
RUN useradd -ms /bin/bash  admin
USER admin
WORKDIR /usr/local/bin/admin

RUN wget https://tkeycoin.com/TkeycoinSetup.install

RUN sh TkeycoinSetup.install

RUN tkeycoind &
