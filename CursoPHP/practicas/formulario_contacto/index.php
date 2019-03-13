<?php
$errores = "";
$enviado = "";

if(isset($_POST['submit'])){
    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    $mensaje = $_POST['mensaje'];

    if(!empty($nombre)){
        $nombre = trim($nombre);
        $nombre = filter_var($nombre,FILTER_SANITIZE_STRING);
    }else{
        $errores .= "Por favor ingresa un Nombre<br>";
    }

    if(!empty($correo)){
        $correo = filter_var($correo,FILTER_SANITIZE_EMAIL);

        if(!filter_var($correo,FILTER_VALIDATE_EMAIL)){
            $errores .= "Por favor ingrese un Mail valido <br>";
        }
    }else{
        $errores .= "Por favor ingrese un Mail <br>";
    }

    if(!empty($mensaje)){
        $mensaje = htmlspecialchars($mensaje);
        $mensaje = trim($mensaje);
        $mensaje = stripslashes($mensaje);


    }else{
        $errores.= "Por favor ingrese un mensaje<br>";
    }

    if(!$errores){
        $enviar_a="tucorreo@hotmail.com";
        $asunto = "mensaje enviado desde miPagina";
        $mensaje_preparado = "De: ".$nombre."\n";
        $mensaje_preparado.= "Correo: ".$correo."\n";
        $mensaje_preparado.="Mensaje: ".$mensaje;
        mail($enviar_a,$asunto,$mensaje_preparado);
        $enviado = true;
    }


}

require('index.view.php');
?>