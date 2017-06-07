# Configure apt and install basic tools
COPY files/apt.conf /etc/apt/apt.conf
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && \
    apt-get install net-tools \
                    inetutils-ping \
                    sudo \
                    unzip \
                    vim \
                    wget \
                    zsh

dnl # atom:set grammar=Dockerfile:
