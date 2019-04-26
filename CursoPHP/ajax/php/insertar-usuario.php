<?php
// error_reporting(0);

header('Content-type: application/json; chartset=utf-8');

$nombre = $_POST['nombre'];
$edad = $_POST['edad'];
$pais = $_POST['pais'];
$correo = $_POST['correo'];
// $edad = int($edad);
function validarDatos($nombre, $edad, $pais, $correo)
{
    if ($nombre == '') {
        return false;
    } elseif ($edad == '' || is_int($edad)) {
        return false;
    } elseif ($pais == '') {
        return false;
    } elseif ($correo == '') {
        return false;
    }

    return true;
}

if (validarDatos($nombre, $edad, $pais, $correo)) {
    try {
        $conexion = new PDO('mysql:host=localhost;dbname=curso_php_ajax', 'root', '');
        $conexion->query('SET NAMES utf8');
    } catch (PDOException $e) {
        $conexion = false;
    }

    if (!$conexion) {
        $respuesta = ['error' => true];
    } else {
        $statement = $conexion->prepare("INSERT INTO usuarios(nombre,edad,pais,correo) VALUES(:nombre,:edad,:pais,:correo)");
        $statement->execute(array(
            ':nombre' => $nombre,
            ':edad' => $edad,
            ':pais' => $pais,
            'correo' => $correo
        ));

        if ($conexion->rowCount() <= 0) {
            $respuesta = ['error' => true];
        }else{
            $respuesta = [];
        }
    }
}else{
    $respuesta = ['error' => true];
}

echo json_encode($respuesta);
