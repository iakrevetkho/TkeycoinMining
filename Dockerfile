FROM ubuntu:18.04


RUN apt-get update -y

RUN apt-get install sudo wget -y

# For auto tzdata conf
ENV TZ=Europe/Moscow

# Create user admin
RUN useradd -ms /bin/bash  admin
RUN echo "admin ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers
USER admin
WORKDIR /home/admin

RUN wget https://tkeycoin.com/TkeycoinSetup.install

RUN sh TkeycoinSetup.install

RUN tkeycoind &
