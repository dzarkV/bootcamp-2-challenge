#!/bin/bash

if [[ ! -d foo ]] # Check if folder already exists
then
    mkdir foo foo/dummy foo/empty
    touch foo/dummy/file1.txt foo/dummy/file2.txt
    echo "Me encanta bash!!" >> foo/dummy/file1.txt
else
    echo "La carpeta foo ya existe"
fi