<?php
// $conexion = new PDO('mysql:host=localhost;dbname=prueba_datos','root','');

// $resultados = $conexion->query('INSERT INTO usuarios(nombre)VALUES("Master")');
// $resultados = $conexion->query("SELECT * FROM usuarios");
// foreach($resultados as $filas){
//    echo $filas['ID'].'-'.$filas['nombre'].'<br>';
// }

try{
    $conexion = new PDO('mysql:host=localhost; dbname=prueba_datos','root','');
    $statement = $conexion->prepare('INSERT INTO usuarios(nombre) VALUES("Nestor2077")');
    $statement->execute();
    $statement = $conexion->prepare('SELECT * FROM usuarios');
    $statement->execute();
    $resultado = $statement->fetchAll();
    foreach($resultado as $fila){
        echo $fila['ID'].'-'.$fila['nombre'].'<br>';
    }
}catch(PDOException $e){
    echo 'Error: '.$e->getMessage();
}


?>