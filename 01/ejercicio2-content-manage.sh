#!/bin/bash

if [[ -f foo/dummy/file1.txt && -f foo/dummy/file2.txt ]] # Check if folder already exists
then
    cat foo/dummy/file1.txt >> foo/dummy/file2.txt
    mv foo/dummy/file2.txt foo/empty/.
else
    echo "Todos los archivos no están en la carpeta"
fi