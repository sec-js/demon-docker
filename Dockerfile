
FROM kalilinux/kali

WORKDIR /root/
RUN echo "deb http://kali.download/kali kali-last-snapshot main contrib non-free" > /etc/apt/sources.list

RUN apt-get -y update && apt-get -y upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
   nano curl wget git netcat \
   python python-pip python3 python3-pip \
   p7zip-full p7zip-rar p7zip \
   net-tools build-essential iputils-ping pciutils bash-completion \
   kali-linux-large scrcpy && \
   apt-get autoremove -y && \
   apt-get clean -y

RUN printf "alias ll='ls $LS_OPTIONS -l'\nalias l='ls $LS_OPTIONS -lA'\n\n# enable bash completion in interactive shells\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then\n    . /etc/bash_completion\nfi\n" > /root/.bashrc

RUN mkdir /data

CMD ["/bin/bash"]
