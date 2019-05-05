FROM ubuntu:18.04


RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install sudo wget -y

# Create user admin
RUN useradd -ms /bin/bash  admin
RUN admin ALL=(ALL) NOPASSWD:ALL
USER admin
WORKDIR /home/admin

RUN wget https://tkeycoin.com/TkeycoinSetup.install

RUN sh TkeycoinSetup.install

RUN tkeycoind &
