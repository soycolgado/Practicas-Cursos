<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    <link rel="stylesheet" href="estilos.css">
    <title>Formulario Contacto</title>
</head>
<body>
    <div class="wrap">
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
            <input type="text" name="nombre" placeholder="Nombre" value="" id="nombre" class="form-control">
            <input type="text" name="correo" id="correo" placeholder="Correo:" value="" class="form-control">
            <textarea name="mensaje" id="mensaje" class="form-control" placeholder="Mensaje"></textarea>
            <?php if(!empty($errores)):?>
            <div class="alert error" role="alert">
                <?php echo $errores;?>
            <div>
            <?php elseif($enviado):?>
            <div class="alert success" role="alert">
                <?php echo "Enviado correctamente";?>
            </div>
<?php endif;?>
            <input type="submit" value="Enviar correo" name="submit" id="submit" class="btn btn-primary">
        </form>
    </div>
</body>
</html>