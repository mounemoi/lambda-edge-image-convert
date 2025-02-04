FROM amazonlinux

WORKDIR /tmp

#install the dependencies
RUN yum -y install gcc-c++ && yum -y install tar gzip zip
RUN touch ~/.bashrc && chmod +x ~/.bashrc
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
RUN source ~/.bashrc && nvm install 8.10

WORKDIR /build

