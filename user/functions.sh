#!/bin/bash
#Spack does not have a way to list all available environments so...here is a function to do that
spack-envlist() {
    echo "=== Site environments in /opt/nesi/spack/zen3/spack-env ==="
    ls /opt/nesi/spack/zen3/spack-env/ 2>/dev/null || echo "none"
    echo ""
    echo "=== Below is a list of any environments you created ==="
    spack env list
    echo ""
    echo "To track a site environment run:"
    echo "spack env track /opt/nesi/spack/zen3/spack-env/ENVNAME"
    echo ""
}
