#!/bin/bash
#Spack does not have a generic list available environments so...here is a function to do that
spack-envlist() {
    echo "=== Site environments ==="
    ls /opt/nesi/spack/zen3/spack-env/ 2>/dev/null || echo "none"
    echo "=== Your environments ==="
    spack env list
}
