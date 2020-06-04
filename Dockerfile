FROM centos:7

RUN yum -y install fop libxml2 libxslt docbook5-style-xsl docbook5-schema docbook5-schemas deja* make
COPY ./build.sh /usr/local/bin
WORKDIR /code
CMD ["/usr/local/bin/build.sh"]
