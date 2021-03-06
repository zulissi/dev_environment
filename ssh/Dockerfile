FROM ubuntu:20.04
ARG USERNAME=zulissi

RUN apt-get update && apt-get install -y openssh-server 
RUN apt-get install -y nano git vim build-essential curl wget

RUN mkdir /var/run/sshd
RUN sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN useradd -rm  -d /home/$USERNAME -s /bin/bash -g root -G sudo -u 1000 $USERNAME
RUN echo $USERNAME:$USERNAME | chpasswd

EXPOSE 22

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY default_authorized_keys /usr/local/etc
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/bin/bash","-c","runuser -l zulissi /usr/local/bin/entrypoint.sh; /usr/sbin/sshd -D"]

