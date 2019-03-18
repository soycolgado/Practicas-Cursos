<?php
    $conexion = new mysqli('localhost','root','','prueba_datos_nuevo');

    if($conexion->errno){
        echo "No se pudo conectar con la base de datos";
    }else{
        $sql = "INSERT INTO usuarios(nombre,edad) VALUES('Nestor2077',50)";
        $conexion->query($sql);
        if($conexion->affected_rows >= 1){
            echo 'Filas agregadas: '.$conexion->affected_rows;
        }
    }
?>