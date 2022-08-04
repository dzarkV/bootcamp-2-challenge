# Reto 2

4. **Problema propuesto** 
   
Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.

Entregable, crear un Readme.md con la solución al Problema propuesto

*Solucion*

Debe de cambiar los permisos de usuario en el archivo *`Lista_Precios`* con el comando `chmod`, el tipo de usuarios para quienes los permisos serán cambiados son **grupo** y **otros**, mientras que él, siendo usuario propietario, tendría todos los permisos.
Los permisos que serían cambiados serían los permisos de lectura, escritura y ejecución.

> No estaría de más verificar que nadie posea acceso al usuario `root`, ya que con este usuario privilegiado se puede acceder al archivo.

El comando a correr sería el siguiente en la carpeta `/home`:

<pre>chmod u=rwx,go= Lista_Precios</pre>

Al probar con otro usuario no podemos hacer nada con este archivo.