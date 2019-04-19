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
            <h1 class="titulo">Mi increible galeria en php y mysql</h1>
        </div>
    </header>
    <section class="fotos">
        <div class="contenedor">
            <?php foreach ($fotos as $foto) : ?>
                <div class="thumb">
                    <a href="foto.php?id=<?php echo $foto['id']; ?>">
                        <img src="fotos/<?php echo $foto['imagen']; ?>" alt="">
                    </a>
                </div>
            <?php endforeach; ?>
            <div class="paginacion">
                <?php if ($pagina_actual > 1) : ?>
                    <a href="index.php?p=<?php echo $pagina_actual - 1;?>" class="izquierda"><i class="fa fa-long-arrow-left"></i> Pagina anterior</a>
                <?php endif; ?>
                <?php if ($pagina_actual != $total_paginas) : ?>
                    <a href="index.php?p=<?php echo $pagina_actual + 1;?>" class="derecha">Pagina siguiente <i class="fa fa-long-arrow-right"></i></a>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <footer>
        <p class="copyright">Galeria creada por Nestor Bardel - BlackMamba</p>
    </footer>
</body>

</html>