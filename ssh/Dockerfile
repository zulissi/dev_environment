FROM ubuntu:20.04
ARG username

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd
RUN sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN useradd -rm  -d /home/$username -s /bin/bash -g root -G sudo -u 1001 $username
RUN echo '$username:$username' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
