FROM cschranz/gpu-jupyter:latest

USER root
RUN sudo apt update
RUN sudo apt install quantum-espresso openssh-server -y

USER $NB_UID
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y

