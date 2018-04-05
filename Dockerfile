FROM jupyter/datascience-notebook:latest

USER root
RUN npm i -g git-credential-envvar
USER ${NB_USER}

RUN pip install \
  jupyterlab_github
RUN jupyter labextension install @jupyterlab/github
RUN jupyter serverextension enable --sys-prefix jupyterlab_github

RUN git config --global credential.helper envvar
