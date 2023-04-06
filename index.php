<?php
include('./data/DB.php');
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Basico PHP - Ajax - SQL</title>
    <!--estilos css para la página-->
    <link rel="stylesheet" href="./public/css/app.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--Script para validar Rut-->
    <script src="./public/js/check_rut.js"></script>
     <!--Script para llenar el select región-->
     <script src="./public/js/regiones.js"></script>
    <!--Script para la asociación de Comuna con Región-->
    <script src="./public/js/zonas.js"></script>
    <!--Script para validación del formulario y envió de datos para registrar en BD-->
    <script src="./public/js/valida_form.js"></script>

    <!---->
</head>

<body>

    <div class="container">
        <div class="cabecera">
            <h1>FORMULARIO DE VOTACIÓN:</h1>
        </div>
        <div class="formulario">
            <!--Formulario con los campos identificados con ID y name y con validaciones según corresponda para cada dato solicitado-->
            <form id="myForm" action="contact.php" method="post">
                <div class="elem-group">
                    <label class="label-check" for="nombre">Nombre y Apellido</label>
                    <input type="text" id="nombre" name="nombre" pattern=[A-Z\sa-z]{1,20} required>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="alias">Alias</label>
                    <input type="text" id="alias" name="alias" pattern=[A-Za-z0-9\s]{6,20} required>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="rut">RUT</label>
                    <input type="text" oninput="checkRut(this)" id="rut" name="rut" required minlength="8"
                        maxlength="10">
                </div>
                <div class="elem-group">
                    <label class="label-check" for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="region">Región</label>
                    <select id="region" name="region" required>
                    <option value="">Seleccionar</option>
                    </select>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="comuna">Comuna</label>
                    <select id="comuna" name="comuna" required>
                    <option value="">Seleccionar</option>
                    </select>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="candidato">Candidato</label>
                    <select id="candidato" name="candidato" required>
                        <option value="">Seleccionar</option>
                        <?php
                    $query = $conn -> query ("SELECT * FROM candidatos");
                              while ($valores = mysqli_fetch_array($query)) {

                                echo '<option value="'.$valores['id'].'">'.$valores['nombre'].'</option>';
                    }
                    ?>
                    </select>
                </div>
                <div class="elem-group">
                    <label class="label-check" for="check">Como se enteró de Nosotros</label>
                    <div class="check">
                        <input class="check-inpt" name="opcion[]" value="1" type="checkbox" id="web">
                        <label class="check-lab" for="web">Web</label>
                        <input class="check-inpt" name="opcion[]" value="2" type="checkbox" id="tv">
                        <label class="check-lab" for="tv">TV</label>
                        <input class="check-inpt" name="opcion[]" value="3" type="checkbox" id="rs">
                        <label class="check-lab" for="rs">Redes Sociales</label>
                        <input class="check-inpt" name="opcion[]" value="4" type="checkbox" id="amigo">
                        <label class="check-lab" for="amigo">Amigo</label>
                        
                    </div>
                </div>

                <div id="alerta" class="alerta">
                <!--Mensaje de alerta tanto para validaciones y errores como para informar del correcto envió y registro de la información-->  
                </div>
                <button type="submit">Votar</button>
                
            </form>
        </div>
    </div>


</body>

</html>