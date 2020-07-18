# create repo
repo_dir="${1:-$PWD/repo}"
image_tag_ver=${2:-latest}
docker run --rm -v $(realpath "$repo_dir"):/repo lurepo:${image_tag_ver}
