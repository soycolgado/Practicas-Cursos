<?php
    class CargarLibro extends Conexion{
        public static function cargar($sku,$descripcion,$marca){
            $link = Conexion::conectar();
            $statement = $link->prepare("INSERT INTO procesadores(sku,descripcion,marca) VALUES(:sku,:descripcion,:marca)");
            $statement->bindParam(':sku',$sku,PDO::PARAM_STR);
            $statement->bindParam(":descripcion",$descripcion,PDO::PARAM_STR);
            $statement->bindParam(":marca",$marca,PDO::PARAM_STR);
            $statement->execute();

        }

        
    }
?>