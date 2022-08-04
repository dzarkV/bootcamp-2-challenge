#!/bin/bash

if [[ -f foo/dummy/file1.txt && -f file2.txt ]]
then
    cat foo/dummy/file1.txt >> foo/dummy/file2.txt
    mv foo/dummy/file2.txt foo/empty/.
else
    echo "Los archivos no se encuentran en la carpeta"
fi