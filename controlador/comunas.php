<?php
//incluye la conexión a la base de datos
include('../data/DB.php');

//consulta a la base de datos para obtener las comunas cuyo código de región sea igual al recibido
$query=$conn->query("SELECT * FROM comunas WHERE codigo = $_GET[codigo]");

//creación del array con los datos obtenidos
  $options = array();
  while ($row = $query->fetch_assoc()) {
    $options[] = array('codigoInterno' => $row['codigoInterno'], 'nombre' => $row['nombre']);
  }

  //devolución del JSON con los datos
  echo json_encode($options);

?>