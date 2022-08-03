## Limitación del problema

El líder del equipo debe resguardar los datos del archivo `Lista_Precios` en su directorio `/home` y solamente él debe tener acceso al mismo porque el archivo es altamente confidencial.

## Riesgo

Otros  empleados  utilizan  su  equipo  al finalizar  su turno. Es decir, otras personas acceden al equipo donde se encuentra alojado el archivo confidencial.

## Medidas

Algunas medidas a implementar son:

* Crear sesiones de usuario para cada persona que tiene acceso al equipo
* Para cada sesión (o tipo de usuario), restringir permisos
* En últimas, también podemos definir la inmutabilidad al archivo confidencial, para que no sea modificado por error, ni siquiera por el usuario `root`

### Tipos de usuario

Se puede definir al lider del equipo como usuario `root` o con permisos de administración y hacer un grupo para el resto de sesiones. De tal manera que existen dos tipos de usuarios en el que el líder `root` tiene la jerarquía más alta, de tal manera que para acceder se debe usar la contraseña del líder del equipo.

Para crear un grupo:

`groupadd <nombre-del-grupo>`

Si el grupo ya existe (pero no se han definido permisos), podemos usar:

`chgrp <nombre-del-grupo> /home/Lista_Precios`

Para añadir usuarios al grupo y establecer el grupo al que pertenece (`-g`), que asigne y cree (si no existe) un directorio de trabajo al usuario (`-m -d`) y una contraseña provisional (`-p`) para que sea cambiada posteriormente:

`useradd -g <nombre-del-grupo> -m -d /home/nombre-de-usuario/ -p <nombre-de-usuario>`

### Tipos de permiso

Al **grupo** al cual están asociadas las demás sesiones y para **otros** se debe remover cualquier permiso para el archivo confidencial, ya sea lectura, escritura o ejecución, dejando los permisos únicamente para el propietario:

`chmod g-rwx,o-rwx /home/Lista_Precios`

## Verificación de permisos

Para verificar los permisos de acceso que tiene el archivo, ejecutamos:

`ls -l /home/Lista_Precios`

## Inmutabilidad

Para que un archivo no sea modificado, ni siquiera por su usuario propietario, podemos usar `chattr`, donde `+i` es la **flag** para establecer la inmutabilidad del archivo:

`chattr +i /home/Lista_Precios`

Esta inmutabilidad debe ser escrita con privilegios `sudo`.

Para verificar este atributo, podemos ejecutar:

`lsattr /home/Lista_Precios`
