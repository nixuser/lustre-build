FROM fedora:latest

# TODO parametrise copy file 
# ARG REPO file
ARG REPO_CONFIG_FILE=wcrelease.repo

#COPY  repos/whamcloud.repo /tmp/whamcloud.repo
COPY  repos/${REPO_CONFIG_FILE} /tmp/whamcloud.repo
WORKDIR /repo
RUN yum -y install yum-utils createrepo && yum clean all
COPY get_repo_config.sh /usr/bin/
ENTRYPOINT ["/usr/bin/get_repo_config.sh"]
