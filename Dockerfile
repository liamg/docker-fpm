FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /pkg
VOLUME /pkg

RUN yum install -y sudo rpm-build ruby ruby-devel rubygems gcc && \
    gem install fpm && \
    yum remove -y ruby-devel gcc cpp glibc-headers kernel-headers glibc-devel && \
    yum clean all

ENTRYPOINT ["/setup.sh"]

COPY setup.sh /setup.sh
