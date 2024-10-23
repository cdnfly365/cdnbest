#/bin/sh
export DOWNLOAD_PREFIX="http://github.itzmx.com/NickNGcc/cdnbest/main/docker"

wget --no-check-certificate $DOWNLOAD_PREFIX/Dockerfile -O Dockerfile
wget --no-check-certificate $DOWNLOAD_PREFIX/run.sh -O run.sh

docker build -t node .
docker run -d --name node -p 3311:3311 -p 80:80 node