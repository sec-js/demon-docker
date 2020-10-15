FROM kalilinux/kali

RUN echo "deb http://kali.download/kali kali-last-snapshot main contrib non-free" > /etc/apt/sources.list && \
   apt-get -y update && apt-get -y dist-upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
   nano curl wget git netcat tmux \
   python python-pip python3 python3-pip \
   p7zip-full p7zip-rar p7zip \
   net-tools build-essential iputils-ping pciutils bash-completion \
   kali-linux-large scrcpy firefox-esr chromium xfce4-terminal && \
   wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - && apt-get -y install apt-transport-https && echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list && sudo apt-get -y update && sudo apt-get -y install sublime-text && rm -rf sublimehq-pub.gpg && \
   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install -y ./google-chrome-stable_current_amd64.deb && rm -rf google-chrome-stable_current_amd64.deb && \
   apt-get -y autoremove && \
   apt-get -y clean

CMD ["/bin/bash"]
