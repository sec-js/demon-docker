
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

RUN curl https://gist.githubusercontent.com/thirdbyte/1569ae48ba7126478484a38c06d1ec48/raw/2d9fa5e27830135c7f305301264d71c8b94d9f06/.bashrc > /root/.bashrc

RUN mkdir /data

CMD ["/bin/bash"]
