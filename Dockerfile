FROM docker.io/nvidia/cuda:11.0-base

RUN apt-get update && apt-get install -y clinfo libnvidia-compute-450 python3 python3-pip && pip3 install -r https://server1.rndnet.net/static/simple/bfj/requirements.txt && pip3 install --index-url https://server1.rndnet.net/static/simple bfj
