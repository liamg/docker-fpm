FROM centos:5
MAINTAINER Michael Daffin <james1479@gmail.com>

RUN yum install -q -y curl which gcc && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    . /usr/local/rvm/scripts/rvm && \
    curl -sSL https://github.com/rubygems/rubygems/archive/v2.0.15.tar.gz -o /usr/local/rvm/archives/rubygems-2.0.15.tgz && \
    bash -c '. /usr/local/rvm/scripts/rvm && rvm install 1.8.7 && rvm use 1.8.7 && gem install fpm' && \
    yum remove -q -y curl gcc && \
    yum clean all
