#!/bin/bash

cd ~
mkdir nueva_carpeta
cd nueva_carpeta
touch archivo_nuevo.txt
mv archivo_nuevo.txt archivo_viejo.txt
echo "Nueva línea de texto" >> archivo_viejo.txt
chmod a+rwx archivo_viejo.txt
cd ..
ln -s nueva_carpeta/archivo_viejo enlace.ln
rm -r nueva_carpeta