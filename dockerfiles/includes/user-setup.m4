RUN useradd dev

# Add sudoers rule to allow all commands without password
# ... but only if should only be used as a local dev environment
# RUN echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
#    echo "Defaults env_keep = \"http_proxy https_proxy HTTP_PROXY HTTPS_PROXY ftp_proxy FTP_PROXY NO_PROXY no_proxy\"" >> /etc/sudoers

# Timezone and locale setup
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# The home dir of the user will be the working directory for now
ARG HOME=/home/dev
ENV HOME=${HOME}
WORKDIR ${HOME}

dnl # atom:set grammar=Dockerfile:
