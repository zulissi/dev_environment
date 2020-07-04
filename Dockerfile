FROM cschranz/gpu-jupyter:latest

RUN apt install quantum-espresso
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y

