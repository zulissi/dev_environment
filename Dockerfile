FROM cschranz/gpu-jupyter:latest

RUN apt install quantum-espresso
RUN conda config --set channel_priority flexible
RUN pip install ase pymatgen asap3 -y

