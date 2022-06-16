#!/usr/bin/env bash
if [[ "$OSTYPE" == "linux"* ]]; then
    cd "$(dirname "$0")" || exit
    
    rm Packages Packages.xz Packages.gz Packages.bz2 Packages.zst Release 2> /dev/null
    
    apt-ftparchive packages ./apt/debs > ./apt/Packages
    gzip -c9 ./apt/Packages > ./apt/Packages.gz
    xz -c9 ./apt/Packages > ./apt/Packages.xz
    bzip2 -c9 ./apt/Packages > ./apt/Packages.bz2
    
    apt-ftparchive release -c ./apt/repo.conf . > ./apt/Release
    
    echo "Repository Updated."
fi
