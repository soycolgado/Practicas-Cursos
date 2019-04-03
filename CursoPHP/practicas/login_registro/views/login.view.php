<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estilos.css">
    <title>Iniciar Sesión</title>
    <div class="contenedor">
        <h1 class="titulo">Iniciar Sesión</h1>
        <hr class="border">
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" class="formulario" name="login">
            <div class="form-group">
                <i class="icono izquierda fa fa-user"></i><input type="text" name="usuario" class="usuario" placeholder="Usuario">
            </div>
            <div class="form-group">
                <i class="icono izquierda fa fa-lock"></i><input type="password" name="password" id="password" class="password_btn" placeholder="Contraseña">
                <i class="submit-btn fa fa-arrow-right" onclick="login.submit()"></i>
            </div>
        </form>

        <p class="texto-registrate">
            ¿Aun no tienes cuenta?
            <a href="registrate.php">Regístrate</a>
        </p>
        
    </div>
</head>
<body>
    
</body>
</html>