<?php
//incluye la conexión a la base de datos
include('../data/DB.php');

//consulta a la base de datos para obtener todas las regiones y todos sus datos
$query=$conn->query("SELECT * FROM regiones ");

 // Creación del array con los datos obtenidos
 $options = array();
 while ($row = $query->fetch_assoc()) {
   $options[] = array('codigo' => $row['codigo'], 'nombre' => $row['nombre']);
 }

 // Devolución del JSON con los datos
 echo json_encode($options);

 

?>