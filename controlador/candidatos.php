<?php
//incluye la conexión a la base de datos
include('../data/DB.php');

//consulta a la base de datos para obtener todas los candidatos y todos sus datos
$query=$conn->query("SELECT * FROM candidatos ");

 // Creación del array con los datos obtenidos
 $options = array();
 while ($row = $query->fetch_assoc()) {
   $options[] = array('id' => $row['id'], 'nombre' => $row['nombre']);
 }

 // Devolución del JSON con los datos
 echo json_encode($options);

?>