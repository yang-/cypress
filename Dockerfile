FROM centos:7
RUN yum install -y gtk2 gtk3 libnotify-devel GConf2 nss libXScrnSaver alsa-lib libxtst6 xorg-x11-server-Xvfb
# EXPOSE 80
# CMD ["/usr/sbin/init"]
RUN yum install -y git curl sudo
RUN curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
RUN yum install -y nodejs
RUN git clone https://github.com/yang-/cypress.git
WORKDIR /cypress
RUN npm install

