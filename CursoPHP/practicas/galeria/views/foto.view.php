<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estilos.css">
    <title>Galeria</title>
</head>
<body>
    <header>
        <div class="contenedor">
            <h1 class="titulo">Foto: <?php if(!empty($foto['titulo'])){
                echo $foto['titulo'];
            }else{
                echo $foto['imagen'];
            }?></h1>
        </div>
    </header>
    <div class="contenedor">
        <div class="foto">
            <img src="fotos/<?php echo $foto['imagen']?>" alt="">
            <p class="texto"><?php echo $foto['texto']?></p>
            <a href="index.php" class="regresar"><i class="fa fa-arrow-left"></i> Regresar</a>
        </div>
    </div>
    <footer>
        <p class="copyright">Galeria creada por Nestor Bardel - BlackMamba</p>
    </footer>
</body>
</html>