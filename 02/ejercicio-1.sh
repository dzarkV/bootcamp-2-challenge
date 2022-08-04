#!/bin/bash

mkdir nuevo_directorio

for i in {1..9}; do 
    touch nuevo_directorio/archiv$i
    chmod a-rwx nuevo_directorio/archiv$i
done