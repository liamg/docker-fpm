FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

RUN yum install -q -y ruby ruby-devel rubygems gcc && \
    yum clean all && \
    gem install fpm && \
    yum remove -q -y ruby-devel rubygems gcc && \
    yum clean all
