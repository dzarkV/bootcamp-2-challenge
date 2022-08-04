#!/bin/bash

if [[ -e nuevo_directorio ]]; then
    for i in ./nuevo_directorio/*; do
        if [[ $i =~ archiv1 ]]; then
            chmod o+r nuevo_directorio/archiv1
        fi
        if [[ $i =~ archiv2 ]]; then
            chmod u-w nuevo_directorio/archiv2
        fi
        if [[ $i =~ archiv3 ]]; then
            chmod a-x nuevo_directorio/archiv3
        fi
        if [[ $i =~ archiv4 ]]; then
            chmod go-r nuevo_directorio/archiv4
        fi
        if [[ $i =~ archiv5 ]]; then
            chmod g-r,o+wx nuevo_directorio/archiv5
        fi
        if [[ $i =~ archiv6 ]]; then
            chmod u+w,o-r nuevo_directorio/archiv6
        fi
        if [[ $i =~ archiv7 ]]; then
            chmod u+w,g+x,o-x,o+w nuevo_directorio/archiv7
        fi
        if [[ $i =~ archiv8 ]]; then
            chmod u-rw,g-r nuevo_directorio/archiv8
        fi
        if [[ $i =~ archiv9 ]]; then
            chmod u+rw,g+rw,o+r nuevo_directorio/archiv9
        fi
    done
else
    echo "No se encuetra creada la carpeta nuevo_directorio"
fi