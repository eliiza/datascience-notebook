FROM jupyter/datascience-notebook:latest

USER root
# RUN apt install -y openssh-client
USER ${NB_USER}

RUN pip install gitpuller jupyterlab_github
RUN jupyter labextension install @jupyterlab/github
RUN jupyter serverextension enable --sys-prefix jupyterlab_github
