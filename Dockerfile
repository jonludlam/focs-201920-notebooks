FROM jonludlam/ocaml-jupyter:latest

COPY . ${HOME}
USER root
RUN cd ${HOME} && find . -uid 0 -print0 | xargs -0 chown -R ${NB_UID}
USER ${NB_USER}

