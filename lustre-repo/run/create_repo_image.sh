#!/bin/bash
# create image
# get script dir

build_dir=$PWD/build/
tag=${1:-default}
repofile=${2:-wcrelease.repo}
docker build --build-arg REPO_CONFIG_FILE=$repofile -t lurepo:$tag $build_dir
