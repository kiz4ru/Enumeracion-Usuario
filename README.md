# Enumeracion-Usuario
Author: Kiz4ru.
Enumeracion de usuario en Wordpress 4.9.4.
# Descripción 
Este script explota una vulnerabilidad en wordpress 4.9.4 que podemos encontrar los usuarios de la pagina web.
Esta vulnerabilidad funciona ya que Wordpress no encripta el json source, entonces si le hacemos una peticion ala 
dirección (wp-json/wp/v2/users/) nos mostrara lo que se encuentra dentro de ella.

# Uso:
perl user.pl

# Datos:
Software Link: https://wordpress.org/download/
Version : 4.9.4
Fecha : 17 Feb 2018
Testeado en : Ubuntu / Windows 10
