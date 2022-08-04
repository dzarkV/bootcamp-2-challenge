#!/bin/bash

if [[ ! -e fichero ]]
then 
    wget -qO fichero https://es.wikipedia.org/wiki/DevOps
fi

echo -e 'cat fichero | grep -in $1 | cut -d : -f1' | tr ' ' '\n'