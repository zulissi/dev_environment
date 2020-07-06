FROM cschranz/gpu-jupyter:latest

USER root
RUN sudo apt update

# make a file to contain all the services we want to bring up
RUN echo '#!/bin/bash' > /home/start-services.sh
RUN chmod 0755 /home/start-services.sh

# install SSH server, add it the list of services to bring up, and expose the port
RUN sudo apt install openssh-server -y
RUN echo 'sudo service ssh start' >> /home/start-services.sh
EXPOSE 22

# install quantum espresso
RUN sudo apt install quantum-espresso -y

# switch user back to gpu-jupyter default (jovyan)
USER $NB_UID

# Instally pymatgen, ase, asap3
RUN conda config --set channel_priority flexible
RUN conda install ase pymatgen asap3 -y

CMD ["/home/start-services.sh","&&","start-notebook.sh"]
