<?php
$conexion = mysql_connect('localhost','root','') or die("No se ha podido conectar con la bd");
mysql_select_db('prueba_datos',$conexion);
$resultado = mysql_query('SELECT * FROM usuarios');

while($fila = mysql_fetch_object($resultado)){
    echo $fila->nombre;
    echo '<br>';
}
?>