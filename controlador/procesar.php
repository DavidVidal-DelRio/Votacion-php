<?php
//incluye la conexión a la base de datos
include('../data/DB.php');

//Obtiene los datos enviados por un formulario
$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$opciones = $_POST['opciones'];
//Decodifica el contenido de una variable llamada "opciones", que es un objeto JSON
$opciones = json_decode($opciones);
$opcion1 = $opciones[0];
$opcion2 = $opciones[1];

$candidato = $_POST['candidato'];
//$web = $_POST['web'];

//query para consultar si el rut ingresado ya existe en la BD
$query1 = $conn->query("SELECT rut FROM votantes  WHERE rut = '$rut'");

/*Si el número de filas devuelto por la consulta anterior es mayor que cero,
significa que el RUT ya está asociado a un voto y se devuelve un mensaje de error*/
if ($query1->num_rows > 0) {
    $data['status'] = 'error1';
    $data['result'] = '<span class="alerta-error">El Rut ingresado ya esta asociado a un voto.</span>';
} else {
    //query para registrar al votante ya que se valido que no esta registrado el rut ingresado
    $query2 = $conn->query("INSERT INTO votantes (nombre, alias, rut, email, id_region, id_comuna) VALUES 
    ('$nombre', '$alias', '$rut', '$email', '$region', '$comuna')");
    if ($query2) {
        //se obttiene el ultimo ID registrado en la BD
        $last_id = mysqli_insert_id(($conn));
        //query para registrar el voto
        $query3 = $conn->query("INSERT INTO votos (id_votante, id_candidato) VALUES ('$last_id','$candidato')");
        if ($query3) {
            //Se insertan los IDs del votante y de dos opciones en tabla "votacion_info_medios"
            $query4 = $conn->query("INSERT INTO votacion_info_medios (id_votante, id_medio) VALUES ('$last_id','$opcion1')");
            $query5 = $conn->query("INSERT INTO votacion_info_medios (id_votante, id_medio) VALUES ('$last_id','$opcion2')");
            //Si todo se realiza con éxito, devuelve un mensaje de éxito. Si hay un error, devuelve un mensaje de error
            if ($query4 && $query5) {
                $data['status'] = 'ok';
                $data['result'] = '<span class="alerta-ok">Se registro su voto correctamente.</span>';
            } else {
                $data['status'] = 'error2';
                $data['result'] = '<span class="alerta-error">Ocurrio.</span>';
            }
        } else {
            $data['status'] = 'error3';
            $data['result'] = '<span class="alerta-error">Ocurrio un error al registrar su voto.</span>';
        }
    } else {
        $data['status'] = 'error3';
        $data['result'] = '<span class="alerta-error">Ocurrio un error al registrar su voto.</span>';
    }
}


//Codifica el resultado en formato JSON y lo devuelve al cliente
echo json_encode($data);
