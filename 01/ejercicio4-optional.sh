#!/bin/bash

if [[ ! -e fichero ]]
then
    wget -qO fichero https://es.wikipedia.org/wiki/DevOps
fi

echo -e `cat fichero | grep -in $1 | cut -d : -f1` | tr ' ' '\n'

# cut command remove sections from each line of files
# with -d defines a delimiter (:)  and -f, a field (1)

# tr command to looking good in separated lines :)