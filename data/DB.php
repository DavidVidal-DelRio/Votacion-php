<?php
    //datos de conexión
    //nombre del servidor y/o ip
    $servername = "localhost";
    //nombre de la base de datos
    $database = "votacion";
    //nombre de usuario de la base de datos
    $username = "root";
    //conrtaseña de la base de datos
    $password = "";
    // crear conexión 
    $conn = mysqli_connect($servername, $username, $password, $database);
    // validar conexión
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    //retorna conexión para se utilizada
    return $conn;


?>
