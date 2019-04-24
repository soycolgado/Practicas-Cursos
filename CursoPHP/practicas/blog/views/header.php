<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/bb21b3a7e0.css">
    <link rel="stylesheet" href="<?php echo RUTA;?>/css/estilos.css">
    <title>Blog</title>
</head>
<body>
    <header>
        <div class="contenedor">
            <div class="logo izquierda">
                <p><a href="<?php echo RUTA;?>">Mi primer Blog</a></p>
            </div>
            <div class="derecha">
                <form action="<?php echo RUTA;?>/buscar.php" method="GET" name="busqueda" class="buscar">
                    <input type="text" name="busqueda" id="" placeholder="Buscar"><button type="submit" class="icono fa fa-search"></button>
                </form>
                <nav class="menu">
                    <ul>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>