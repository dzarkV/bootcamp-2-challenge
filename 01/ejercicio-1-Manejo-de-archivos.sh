#!/bin/bash

if [[ ! -d foo ]]
then
    mkdir foo
    cd foo
    mkdir dummy empty
    cd dummy
    touch file1.txt file2.txt
    echo "Me encanta bash!!" >> file1.txt
else
    echo "La carpeta foo ya fue creada"
fi