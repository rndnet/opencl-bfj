#!/bin/bash

#VER=`date +"%Y-%m-%d_%H-%M-%S"`
TAG=nvidia-11.0
REP=docker.io/rndnet/opencl-bfj
VER=`date +"%Y-%m-%d"`

echo
echo "Build ....."
podman build -t ${REP}:${TAG}-${VER} -t ${REP}:${TAG}  --no-cache -f Dockerfile  #use git clone git: ... for microsesm library

echo
echo Upload images
podman login docker.io
podman push ${REP}:${TAG}-${VER} 
podman push ${REP}:${TAG}

