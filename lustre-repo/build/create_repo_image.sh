# create image
# get script dir

build_dir=$(dirname $0)/build
docker build -t lurepo $build_dir
