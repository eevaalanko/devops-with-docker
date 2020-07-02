#!/usr/bin/env bash


git clone https://github.com/eevaalanko/docker-hy.github.io.git

cd docker-hy.github.io

docker build -t yves6000/docker-hy-33 .

docker login docker.io -u yves6000 -p Laikku111!

docker push yves6000/docker-hy-33