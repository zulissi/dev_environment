FROM cschranz/gpu-jupyter:latest

USER root
RUN sudo apt update

# install SSH server
RUN sudo apt install openssh-server -y
ADD start-ssh.sh /home/
RUN ["chomd 0755 /home/start-ssh.sh"]
EXPOSE 22

# install quantum espresso
RUN sudo apt install quantum-espresso -y

# switch user back to gpu-jupyter default (jovyan)
USER $NB_UID

# Instally pymatgen, ase, asap3
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y

CMD ["/home/start-ssh.sh","&&","start-notebook.sh"]
