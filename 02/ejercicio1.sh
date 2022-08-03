#!/bin/bash

mkdir newfolder

for i in {1..9}; do
    touch newfolder/archiv$i
    chmod a-rwx newfolder/archiv$i
done
