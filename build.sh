
AMD_DRV=amdgpu-pro-20.20-1089974-rhel-7.8.tar.xz

if [ ! -f ./files/${AMD_DRV} ]; then
    echo
    echo "Download AMD drivers: ${AMD_DRV}"
    referer="https://www.amd.com/en/support/kb/release-notes/rn-rad-lin-20-20-unified"
    download="https://drivers.amd.com/drivers/linux/${AMD_DRV}"
    wget ${download} --referer ${referer}  -O files/${AMD_DRV}
fi

exit

podman build -t docker.io/rndnet/opencl-bfj:latest -f Dockerfile
