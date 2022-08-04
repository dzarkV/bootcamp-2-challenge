#! /bin/bash
# Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo. Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será: Que me gusta bash!!!!

function crearJerarquia () {
    mkdir foo
    mkdir foo/empty foo/dummy
    touch foo/dummy/file1.txt
}

if [[ ! -d foo ]] 
then
    crearJerarquia

else
    rm -r foo
    crearJerarquia
fi

# Pedir por teclado un directorio 
read -p "Introduzca texto de file1.txt:    " texto
echo $texto
if [[ ! -z $texto ]]
then
    echo $texto > foo/dummy/file1.txt
else
    texto="Que me gusta bash!!!!"
    echo $texto > foo/dummy/file1.txt

fi
cp foo/dummy/file1.txt foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty
