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
            <h1 class="titulo">Subir Foto</h1>
        </div>
    </header>
    <div class="contenedor">
        <form class="formulario" enctype="multipart/form-data"action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST">
            <label for="foto">Seleccione tu foto:</label>
            <input type="file" name="foto" id="foto">

            <label for="titulo">Titulo de la foto</label>
            <input type="text" name="titulo" id="titulo">

            <label for="texto">Descripcion:</label>
            <textarea name="texto" id="texto" placeholder="Ingrese la descripcion"></textarea>

            <input type="submit" value="Subir foto" class="submit">
            <?php if(isset($error)):?>
                <p class="error"><?php echo $_error;?></p>
            <?php endif;?>
        </form>
    </div>
    <footer>
        <p class="copyright">Galeria creada por Nestor Bardel - BlackMamba</p>
    </footer>
</body>
</html>