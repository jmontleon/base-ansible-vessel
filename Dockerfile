FROM centos:latest
MAINTAINER Vessel Maintainers

RUN yum -y update \
    && yum -y install epel-release centos-release-openshift-origin \
    && yum -y install ansible docker origin-clients \
    && yum clean all
