#!/bin/bash

cd plymouth-kebianos

dpkg-buildpackage -us -uc -b


cd ..

if [ "$1" = "-u" ]; then
    git add .
    git commit -m "actualizacion"
    git push origin main
    exit 0
fi
