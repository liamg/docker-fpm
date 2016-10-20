FROM swco/fpm
MAINTAINER Liam Galvin <liam@liam-galvin.co.uk>

WORKDIR /pkg
VOLUME /pkg

RUN yum install -y sudo rpm-build ruby ruby-devel rubygems gcc make wget tar && \
    gem install fpm && \
    yum remove -y ruby-devel gcc cpp glibc-headers kernel-headers glibc-devel && \
    yum clean all

