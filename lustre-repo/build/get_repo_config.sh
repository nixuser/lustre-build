#!/bin/bash

repo_config=/tmp/whamcloud.repo

reposync --config "$repo_config" --newest-only \
--repoid=lustre-client \
--repoid=e2fsprogs-wc \
--repoid=lustre-server

for i in e2fsprogs-wc lustre-client lustre-server; do
  (cd $i && createrepo .)
done

hn=$(hostname --fqdn)
cat >lustre.repo <<__EOF
[lustre-server]
name=lustre-server
baseurl=https://$hn/repo/lustre-server
enabled=0
gpgcheck=0
proxy=_none_

[lustre-client]
name=lustre-client
baseurl=https://$hn/repo/lustre-client
enabled=0
gpgcheck=0

[e2fsprogs-wc]
name=e2fsprogs-wc
baseurl=https://$hn/repo/e2fsprogs-wc
enabled=0
gpgcheck=0
__EOF
