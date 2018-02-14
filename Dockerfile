FROM jenkins/jenkins:lts

USER root

RUN apt-get -qq update && apt-get -qq -y install build-essential libssl-dev curl git  libcairo2-dev libjpeg-dev libpng-dev libpango1.0* libpango1.0-dev  libpangomm-1.4-dev libgif-dev
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN curl -sSL https://get.docker.com/ | sh

RUN apt-get install -y nodejs

RUN usermod -aG root jenkins

USER jenkins