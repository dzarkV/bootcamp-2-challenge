#! /bin/bash
# En un directorio vacío (nuevo), crear 9 archivos (archiv1, archiv2, etc.) utilizando el comando touch:

function crearArchivos () {
    mkdir gestion-de-permisos
    for (( i=1; i<10; i++ ))
    do
    touch gestion-de-permisos/archiv$i
    done
    
}

if [[ ! -d gestion-de-permisos ]]
then
    crearArchivos
else
    rm -rf gestion-de-permisos
    crearArchivos
fi

chmod a-rwx gestion-de-permisos/archiv*
echo "archivos creados y permisos modificados"
