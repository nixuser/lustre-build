
# Instructions

This is directory contains instructions to build local Lustre repository.
It can be useful for multiple installations. More details on page http://wiki.lustre.org/Installing_the_Lustre_Software#Using_YUM_to_Manage_Local_Software_Provisioning


Create image that contains steps to build local repository
```
run/create_repo_image.sh
```

Create local Lustre rpms repository
```
run/update_lu_repo.sh
```

Present repo directory via HTTP server

```
run/publish_repo.sh
```
Check that repo available 
```
curl localhost:8080
```


# Directory structure
build   - build images

run     - scripts to run update process

# Additional info

How to create repository for RHEL/CentOS

https://access.redhat.com/solutions/23016#basic
