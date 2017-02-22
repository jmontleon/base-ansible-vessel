FROM centos:latest
MAINTAINER Vessel Maintainers

RUN yum -y update \
    && yum -y install epel-release centos-release-openshift-origin \
    && yum -y install ansible \
                   git \
                   python-devel \
                   python-pip \
                   libyaml-devel \
                   gcc \
                   docker \
                   origin-clients \
    && yum clean all
                  
RUN git clone http://github.com/ansible/ansible-container /ansible-container \
    && cd /ansible-container \
    && pip install --upgrade setuptools \
    && python ./setup.py install
