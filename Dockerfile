FROM docker.io/library/centos:7.8.2003
ENV GPU_FORCE_64BIT_PTR=1
ENV GPU_USE_SYNC_OBJECTS=1
ENV GPU_MAX_ALLOC_PERCENT=100

COPY files /opt
RUN cd /opt/ && tar -xvf  amdgpu-pro-20.20-1089974-rhel-7.8.tar.xz && cd  amdgpu-pro-20.20-1089974-rhel-7.8 && ./amdgpu-install -y --opencl=legacy --headless --no-dkms && cp /opt/amdgpu-pro/bin/clinfo /usr/bin/ && \
    yum install -y python3 && pip3 install -r https://server1.rndnet.net/static/simple/bfj/requirements.txt && pip3 install --index-url https://server1.rndnet.net/static/simple bfj
