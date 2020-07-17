# create repo
repo_dir="$PWD/repo"
docker run --rm -v $(realpath "$repo_dir"):/repo lurepo:latest
