<?php
session_start();

if($_SESSION){
    $nombre = $_SESSION['nombre'];
    echo '<h1>Hola, '.$nombre.'</h1>';
}else{
    echo 'No has iniciado sesion';
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pagina 2</title>
</head>
<body>
    
    <a href="cerrar.php">Cerrar sesion</a>
</body>
</html>