#!/bin/bash

text=$1
# Check if folder already exists
if [[ ! -d foo ]] 
then
    mkdir foo foo/dummy foo/empty
    touch foo/dummy/file1.txt foo/dummy/file2.txt

else
    echo "La carpeta foo ya existe"
fi

# Check if text variable is zero and set default text
if [[ -z $text ]]
then
    text="Que me gusta bash!!!!"
    echo $text >> foo/dummy/file1.txt
else
    echo $text >> foo/dummy/file1.txt
fi

#Check if files are in the same folder to move file2.txt to empty folder
if [[ -f foo/dummy/file1.txt && -f foo/dummy/file2.txt ]] 
then
    cat foo/dummy/file1.txt >> foo/dummy/file2.txt
    mv foo/dummy/file2.txt foo/empty/.
else
    echo "Todos los archivos no están en la carpeta"
fi