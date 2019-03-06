<?php
$errores = "";

if(isset($_POST['submit'])){
    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    if(!empty($nombre)){
        $nombre = trim($nombre);
        $nombre = htmlspecialchars($nombre);
        $nombre = stripslashes($nombre);
        $nombre = filter_var($nombre,FILTER_SANITIZE_STRING);
        echo "Tu nombre es: ".$nombre;
    }else{
        $errores .= " Por favor agregue el nombre<br>";
    }

    if(!empty($correo)){
        $correo = filter_var($correo,FILTER_SANITIZE_EMAIL);
        if(!filter_var($correo,FILTER_VALIDATE_EMAIL)){
            $errores.="Por favor ingresa un mail valido<br>";
        }
    }else{
        $errores.="Por favor agrega el correo<br>";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .error{
            color:red;
        }
    </style>
</head>
<body>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post">
    <input type="text" name="nombre" placeholder="Nombre:">
    <input type="text" name="correo" id="correo" placeholder="Correo:">
    <?php if(!empty($errores)):?>
        <div class="error"><?php echo  $errores;?></div>
<?php endif;?>
    <input type="submit" value="Enviar" name="submit">
    </form>
</body>
</html>