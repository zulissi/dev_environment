FROM cschranz/gpu-jupyter:latest

RUN sudo apt update
RUN sudo apt install quantum-espresso openssh-server
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y

