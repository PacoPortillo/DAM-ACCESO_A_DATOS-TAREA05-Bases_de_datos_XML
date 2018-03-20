# DAM - ACCESO A DATOS - TAREA 05 - Bases de datos XML:

- - -
<img src="./readme_imagenes/icono_40.png" align="right" width="90"/>

Desarrollo de aplicaciones que gestionan la información almacenada en bases de datos nativas XML evaluando y utilizando clases específicas.
Curso académico: 2017-2018

- - -
## Índice:

[TOC]

- - -
### Cómo usar la aplicación:
La aplicación se abre en el IDE [NetBeans]

- - -
#### Sistemas Operativos:
No hay datos disponibles.

- - -
### Desarrollo:
1. Se inicia el proyecto.
2. Crear la Base de Datos CopiaCursillos a partir de la BD cursillos desde el entorno Java.
3. Realizar 4 consultas a la base de datos desde archivos .xq

_ _ _
### Procesos de trabajo:
1. Se incia el proyecto. **Commit**
2. Dada la Bd cursillos, crear una base de datos XML llamada copiacursillos desde el entorno JAVA (en Netbeans). Esta base de datos debes llenarla con las colecciones y documentos existentes en la base de datos Cursillos, es decir importando sus colecciones y documentos. **Commit**
	* Añadir las librerías al proyecto.
	* Crear las clases con el código Java.
	* Ejecutar el programa y Crear la base de datos.
	* Ejecutar el gestor de base de datos: **Qizx** y realizar las primeras consultas a la base de datos.
3. Realizo las siguientes consultas a la BD XML CopiaCursillos y las ejecuto desde la aplicación Java. **Commit**
Para ello implemento una nueva clase: **QueryBDxml.java**
Cada consulta se guarda en un script .xq, que se llama desde el programa. Las consultas son:
 * Ocupación diaria del aula 2, indicando el curso y profesor.
 * Profesores que imparten cursos con cuotas anuales y  cuyo  precio es superior a 300 euros. Mostrar profesor, curso, y precio, ordenado por profesor.
 * Fechas de inicio y finalización de cada curso impartido, indicando nombre del curso y fechas de impartición.
 * Inventa una consulta sobre la BD:
Listado de cursos: mostrar el Título del curso, nombre del profesor, su DNI, número de aula y las puestos que tiene ese aula.

- - -
#### Fuentes de información:
![ico01]
https://icons8.com/

- - -
### Imágenes:
No hay datos disponibles.

- - -
### Requisitos
- [Java] 7 o superior (para ejecutar la Aplicación).

- - -
### Instalación:
No hay datos disponibles.

- - -
### Entorno de desarrollo
- La aplicación ha sido desarrollada utilizando el IDE [NetBeans].

- - -
### Licencia
Esta aplicación se ofrece bajo licencia [Creative Commons Attribution 4.0].

- - -
### Fecha de creacción del proyecto:
domingo, 18 de marzo de 2018 12:54

- - -
### Fecha de la última actualización:
martes, 20 de marzo de 2018 21:32

- - -

[ico01]: ./readme_imagenes/icono_40.png
[img01]: ./readme_imagenes/img01.jpg


[Java]: https://www.java.com/
[NetBeans]: https://netbeans.org/
[Creative Commons Attribution 4.0]: (https://choosealicense.com/licenses/cc-by-4.0/)


