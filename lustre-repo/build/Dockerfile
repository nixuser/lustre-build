#FROM centos:8
FROM fedora:latest

COPY  whamcloud.repo /tmp/whamcloud.repo
WORKDIR /repo
RUN yum -y install yum-utils createrepo && yum clean all
COPY get_repo_config.sh /usr/bin/
CMD ["/usr/bin/get_repo_config.sh"]
