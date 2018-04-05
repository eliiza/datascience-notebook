FROM jupyter/datascience-notebook:latest

USER root
# RUN apt install -y openssh-client
# ADD logo.png /etc/jupyterhub/eliiza-logo.png
# RUN mkdir -p /eliiza
# ADD update_project.sh /eliiza/
USER ${NB_USER}

RUN pip install \
  nbgitpuller \
  jupyterlab_github \
  keras \
  tensorflow
RUN jupyter labextension install @jupyterlab/github
RUN jupyter serverextension enable --sys-prefix jupyterlab_github
