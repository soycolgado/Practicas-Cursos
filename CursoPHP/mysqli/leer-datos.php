<?php
    $conexion = new mysqli('localhost','root','','prueba_datos_nuevo');

    if($conexion->errno){
        die("Imposible realizar la conexion");
    }else{
        $sql = 'SELECT * FROM usuarios';
        $resultado = $conexion->query($sql);
        if($resultado->num_rows){
            while($fila = $resultado->fetch_assoc())
            echo $fila['nombre'].'<br>';
        }else{
            "No existen registros en su tabla";
        }
    }
?>