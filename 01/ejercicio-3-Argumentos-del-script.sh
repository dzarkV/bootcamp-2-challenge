#!/bin/bash

text=$1

if [[ ! -d foo ]]
then
    mkdir foo foo/dummy foo/empty
    touch file1.txt file2.txt
else
    echo "La carpeta foo ya fue creada"
fi

if [[ -z $text ]]
then 
    text="Que me gusta bash!!!!"
    echo $text >> foo/dummy/file1.txt
else
    echo $text >> foo/dummy/file1.txt


if [[ -f foo/dummy/file1.txt && -f foo/dummy/file2.txt ]]
then
    cat foo/dummy/file1.txt >> foo/dummy/file2.txt
    mv foo/dummy/file2.txt foo/empty/.
else
    echo "Los archivos no se encuentran en la carpeta"
fi