<p align="center"><a href="" target="_blank"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2560px-PHP-logo.svg.png" width="400" alt="PHP Logo"></a></p>

<p align="center">

</p>

## Formulario de Votación v1.0
Formulario de votación básico, cuenta con la validación de RUT (Formato Chileno) y de duplicidad para no permitir más de un voto por RUT.

También cuenta con los mensajes de alerta correspondientes para el correcto llenado de los datos requeridos, las validaciones de estos y la confirmación
de registro de voto exitoso, error y duplicidad.

** Este es la Versión 1.0 de este proyecto de ejemplo básico de un formulario de Votación, el cual con el tiempo estaré actualizando, para incluir otros datos
y un apartado de administración de los datos por defecto, además de un informe de los votos de cada candidato ** 

** Considerar que el dato candidato puede ser reemplazado por otro dato según la necesidad y el objetivo de la votación y/o encuesta **

## Tecnologías utilizadas
- <img src="https://img.shields.io/badge/php-8.2.0-blue" alt="php 8.2.0">
- <img src="https://img.shields.io/badge/Html-blueviolet" alt="Html">
- <img src="https://img.shields.io/badge/css-blueviolet" alt="css">
- <img src="https://img.shields.io/badge/-Ajax-blueviolet" alt="Ajax">
- <img src="https://img.shields.io/badge/-BD%20SQL-blueviolet" alt="BD SQL">

## Instalación
- Instalar XAMPP
- Abra el panel de control XAMPP e inicie [apache] y [mysql]
- Descargue el proyecto de github ( https://github.com/DavidVidal-DelRio/Votacion-php-ajax-simple.git )
- Extraiga los archivos en la carpeta (htdocs) y mantenga el nombre de la carpeta Votacion-php-master (después de instalar XAMPP, abra la carpeta (XAMPP). Luego obtendrá la carpeta (htdocs))
- Abrir enlace http://localhost/phpmyadmin
- Haga clic en nuevo en la barra de navegación lateral
- Nombrar la base de datos como "votacion" presione el botón crear
- Después de crear el nombre de la base de datos, haga clic en importar
- Busque el archivo en el directorio [Xampp\htdocs\Votacion-php-master\SQL\votacion.sql]
después de importar con éxito
- Abra cualquier navegador y escriba http://localhost/Votacion-php-master


## Validaciones del formulario
- Validación de RUT real (Formato Chileno)
- Validación de duplicidad de registro de voto
- Validación de campo Alias que tena un largo mayor a 5 caracteres y incluya numero
- Validación Región y comuna que se seleccione una opción
- Validaciones generales todos los campos son requeridos, correo electrónico según estándar (debe incluir @)

## Capturas
![Imagen del proyecto](https://github.com/DavidVidal-DelRio/referencias-proyectos/blob/master/php-votacion/datos.PNG)
![Imagen del proyecto](https://github.com/DavidVidal-DelRio/referencias-proyectos/blob/master/php-votacion/datos1.PNG)
![Imagen del proyecto](https://github.com/DavidVidal-DelRio/referencias-proyectos/blob/master/php-votacion/datos2.PNG)
![Imagen del proyecto](https://github.com/DavidVidal-DelRio/referencias-proyectos/blob/master/php-votacion/dato-duplicado.PNG)
