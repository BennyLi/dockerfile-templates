RUN chsh -s /bin/zsh dev
COPY files/zshrc ${HOME}/.zshrc

RUN chown -R dev:dev: ${HOME}
USER dev

CMD ["zsh"]

dnl # atom:set grammar=Dockerfile:
