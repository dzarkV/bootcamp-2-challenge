#!/bin/bash

if [[ -e newfolder ]]; then
    for i in ./newfolder/*; do
        if [[ $i =~ archiv1 ]]; then
            chmod o+r newfolder/archiv1
        fi
        if [[ $i =~ archiv2 ]]; then
            chmod u-w newfolder/archiv2
        fi
        if [[ $i =~ archiv3 ]]; then
            chmod a-x newfolder/archiv3
        fi
        if [[ $i =~ archiv4 ]]; then
            chmod go-r newfolder/archiv4
        fi
        if [[ $i =~ archiv5 ]]; then
            chmod g-r,o+wx newfolder/archiv5
        fi
        if [[ $i =~ archiv6 ]]; then
            chmod u+w,o-r newfolder/archiv6
        fi
        if [[ $i =~ archiv7 ]]; then
            chmod u+w,g+x,o-x,o+w newfolder/archiv7
        fi
        if [[ $i =~ archiv8 ]]; then
            chmod u-rw,g-r newfolder/archiv8
        fi
        if [[ $i =~ archiv9 ]]; then
            chmod u+rw,g+rw,o+r newfolder/archiv9
        fi
    done
else
    echo "No exite la carpeta newfolder"
fi
