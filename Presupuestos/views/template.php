<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="views/estilos.css">
    
    <title>Armado PC</title>
</head>
<body>
    <div class="contenedor">
        <header>
            <?php
                include 'modules/navegacion.php';
            ?>
        </header>
        <section class="contenido">
            <?php
                $mvc = new MvcController();
                $mvc -> enlacesPaginasController();
            ?>
        </section>
        
    </div>
    <?php
        include 'modules/footer.php';   
    ?>
</body>
<script src="controllers/controller.js"></script>
</html>