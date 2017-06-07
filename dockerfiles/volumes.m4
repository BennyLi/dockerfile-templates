# Volumes
RUN mkdir -p ${HOME}/projects && \
    mkdir -p ${HOME}/.ssh
VOLUME ["${HOME}/projects", "{HOME}/.ssh"]

dnl # atom:set grammar=Dockerfile:
