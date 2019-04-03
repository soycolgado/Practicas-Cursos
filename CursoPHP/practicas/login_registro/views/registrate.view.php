<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estilos.css">
    <title>Registrate</title>
    <div class="contenedor">
        <h1 class="titulo">Registrate</h1>
        <hr class="border">
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" class="formulario" name="login">
            <div class="form-group">
                <i class="icono izquierda fa fa-user"></i><input type="text" name="usuario" class="usuario" placeholder="Usuario">
            </div>
            <div class="form-group">
                <i class="icono izquierda fa fa-lock"></i><input type="password" name="password" id="password" class="password" placeholder="Contraseña">
            </div>
            <div class="form-group">
                <i class="icono izquierda fa fa-lock"></i><input type="password" name="password2" id="password2" class="password_btn" placeholder="Repetir Contraseña">
                <i class="submit-btn fa fa-arrow-right" onclick="login.submit()"></i>
            </div>
           <?php if(!empty($errores)):?>
                <div class="error">
                    <ul>
                        <?php echo $errores;?>
                    </ul>
                </div>
           <?php endif;?> 
        </form>

        <p class="texto-registrate">
            ¿Ya tienes Cuenta?
            <a href="login.php">Iniciar Sesión</a>
        </p>
        
    </div>
</head>
<body>
    
</body>
</html>