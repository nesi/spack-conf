#!/bin/bash
if [ ! -f "${HOME}/.spack/config.yaml" ]; then
    mkdir -p "${HOME}/.spack"
    cp /opt/nesi/spack/etc/spack-conf/user/config.yaml "${HOME}/.spack/config.yaml"
    cp /opt/nesi/spack/etc/spack-conf/user/upstreams.yaml "${HOME}/.spack/upstreams.yaml"
    echo ""
    echo "[Spack] Created the ~/.spack directory in your home"
    echo "[Spack] Copied config.yaml and upstream.yaml from templates to your ~/.spack dir"
    echo ""
    echo '[Spack] Please run `spack list` to generate the package list, this will take several minutes'
    echo ""
fi
