ARG BASE_CONTAINER=zhenyuliu/image-notebook-gpu:0.0.1
FROM $BASE_CONTAINER

LABEL maintainer="zhenyu liu"

# Install Torch
USER root
RUN conda install pytorch torchvision cuda80 -c soumith

USER $NB_UID
WORKDIR $HOME
