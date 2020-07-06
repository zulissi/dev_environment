FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server nano

RUN mkdir /var/run/sshd
RUN sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN useradd -rm  -d /home/zulissi -s /bin/bash -g root -G sudo -u 1001 zulissi
RUN echo 'zulissi:zulissi' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
