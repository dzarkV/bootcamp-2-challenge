#! /bin/bash
# Sitúate en tu directorio personal de usuario.
# Crea un directorio llamado "nueva_carpeta".
# Accede a esta carpeta que acabas de crear.
# Crea un archivo en este directorio y llámalo archivo_nuevo.txt.
# Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt.
# Añade el texto "Nueva línea de texto" al archivo desde el terminal.
# Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo.
# Sube un nivel de directorio, es decir, vuelve al directorio anterior.
# Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln".
# Elimina el directorio "nueva_carpeta" y los archivos que contenga.
function gestionDirectorios () {
    cd ~
    mkdir nueva_carpeta
    cd nueva_carpeta
    touch archivo_nuevo.txt
    mv archivo_nuevo.txt archivo_viejo.txt
    echo "Nueva línea de texto" > archivo_nuevo.txt
    chmod a=rwx archivo_nuevo.txt
    cd ..
    ln -s nueva_carpeta/archivo_nuevo.txt enlace.ln
    rm -r nueva_carpeta    
}

if ! [[ -e enlace.ln ]] 
then
    gestionDirectorios
else
    rm enlace.ln
    gestionDirectorios
fi

