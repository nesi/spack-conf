#!/bin/bash
#If a user loads Spack for the first time, yes i am assuming a lot by just testing for config.yaml
# maybe should create and test for a hidden lockfile...
if [ ! -f "${HOME}/.spack/config.yaml" ]; then
    mkdir -p "${HOME}/.spack"
    cp /opt/nesi/spack/etc/spack-conf/user/config.yaml "${HOME}/.spack/config.yaml"
    cp /opt/nesi/spack/etc/spack-conf/user/upstreams.yaml "${HOME}/.spack/upstreams.yaml"
    cp /opt/nesi/spack/etc/spack-conf/user/modules.yaml "${HOME}/.spack/modules.yaml"
    echo ""
    echo "[Spack] Created the ~/.spack directory in your home"
    echo "[Spack] Copied config.yaml and other yaml files from templates to your ~/.spack dir"
    echo ""
    echo '[Spack] Please run `spack list` to generate the package list, this will take several minutes'
    echo ""
fi
