FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /pkg
VOLUME /pkg

RUN yum install -y ruby ruby-devel rubygems gcc && \
    gem install fpm && \
    yum remove -y sudo ruby-devel gcc && \
    yum clean all

ENTRYPOINT ["/setup.sh"]

COPY setup.sh /setup.sh
