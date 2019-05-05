FROM ubuntu:18.04

RUN sudo apt-get update -y

RUN wget https://tkeycoin.com/TkeycoinSetup.install

RUN sh TkeycoinSetup.install

RUN tkeycoind &
