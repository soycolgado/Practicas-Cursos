<?php
     $conexion = new mysqli('localhost','root','','prueba_datos_nuevo');

     if($conexion->errno){
         echo "No se pudo conectar con la base de datos";
     }else{
         $statement = $conexion->prepare("INSERT INTO usuarios(id,nombre,edad) VALUES(?,?,?)");
         //Reemplazamos los placeholder ? con los valores que queremos usar
         //s = String;
         //i = integer;
         //d = double;
         $statement->bind_param('ssi',$id,$nombre,$edad);
         $id = NULL;
         
         if(isset($_GET['nombre']) && isset($_GET['edad'])){
             $nombre = $_GET['nombre'];
             $edad = $_GET['edad'];
         }

         $statement->execute();
         if($conexion->affected_rows >= 1){
             echo 'Filas agregadas: '.$conexion->affected_rows;
         }
     }

?>