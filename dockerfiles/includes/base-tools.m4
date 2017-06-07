# Configure apt and install basic tools
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
            net-tools \
            inetutils-ping \
            sudo \
            unzip \
            vim \
            wget \
            zsh

dnl # atom:set grammar=Dockerfile:
