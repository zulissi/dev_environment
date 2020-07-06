FROM cschranz/gpu-jupyter:latest

USER root
RUN sudo apt update

# install quantum espresso
RUN sudo apt install quantum-espresso -y

# switch user back to gpu-jupyter default (jovyan)
USER $NB_UID

# Instally pymatgen, ase, asap3
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y
