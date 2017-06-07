RUN apt-get install git

COPY files/gitconfig ${HOME}/.gitconfig
RUN sed -i "s/REPLACE_USER_EMAIL/$USER_EMAIL/g" ${HOME}/.gitconfig && \
    sed -i "s/REPLACE_USER_FULLNAME/$USER_FULLNAME/g" ${HOME}/.gitconfig

dnl # atom:set grammar=Dockerfile:
