#!/bin/bash
if [ ! -f "${HOME}/.spack/config.yaml" ]; then
    mkdir -p "${HOME}/.spack"
    cp /opt/nesi/spack/etc/spack-conf/user/config.yaml "${HOME}/.spack/config.yaml"
    cp /opt/nesi/spack/etc/spack-conf/user/upstreams.yaml "${HOME}/.spack/upstreams.yaml"
    echo "[Spack] Created ~/.spack directory in your home"
    echo "[Spack] Copied config.yaml and upstream.yaml from templates to your ~/.spack dir"
    echo "[Spack] Review and update install_tree in config.yaml to your preferred location"
    echo ""
    echo '[Spack] Run `spack list` to generate the package list, this will take several minutes'
    echo ""
fi
