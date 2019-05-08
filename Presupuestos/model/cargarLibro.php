<?php
    class CargarLibro extends Conexion{
        public static function cargar($tabla,$sku,$descripcion,$marca,$precio,$distri){
            $link = Conexion::conectar();
            $statement = $link->prepare("INSERT INTO $tabla(sku,descripcion,marca,precio,distribuidor) VALUES(:sku,:descripcion,:marca,:precio,:distri)");
            $statement->bindParam(':sku',$sku,PDO::PARAM_STR);
            $statement->bindParam(":descripcion",$descripcion,PDO::PARAM_STR);
            $statement->bindParam(":marca",$marca,PDO::PARAM_STR);
            $statement->bindParam(":precio",$precio,PDO::PARAM_STR);
            $statement->bindParam(":distri",$distri,PDO::PARAM_STR);
            $statement->execute();

        }

        
    }
?>