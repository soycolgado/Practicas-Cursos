<?php
$conexion = new mysqli('localhost','root','','prueba_datos_nuevo');
if($conexion->errno){
    echo "Lo siento ha habido un error en la base de datos";
}
?>