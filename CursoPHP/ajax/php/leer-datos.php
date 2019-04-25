<?php
    header("Content-type: application/json; charset=utf-8");

    try{
        $conexion = new PDO('mysql:host=localhost;dbname=curso_php_ajax',"root","");

    }catch(PDOException $e){
        $conexion =false; 
    }

    if(!$conexion){
        $respuesta = ['error' => true];
    }else{
        $conexion->query('SET NAMES utf8');
        $statement = $conexion->prepare("SELECT * FROM usuarios");
        $statement->execute();
        $resultado = $statement->fetchAll();
        $respuesta = [];
        //Sin comentarios es la forma mas easy
        foreach ($resultado as $fila) {
            $respuesta[] = $fila;
            // $usuario = [
            //     'id' => $fila['ID'],
            //     'nombre' => $fila['nombre'],
            //     'edad' => $fila['edad'],
            //     'pais' => $fila['pais'],
            //     'correo' =>$fila['correo']
            // ];
            // array_push($respuesta,$usuario);
        }
    }

    echo json_encode($respuesta);
    
?>