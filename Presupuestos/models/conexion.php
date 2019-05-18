<?php
    class Conexion{
        public static function conectar(){
            try{
                $link = new PDO("mysql:host=localhost;dbname=Pruebas","root","");
                return $link;
            }catch(PDOException $e){
                $link = false;
            }
        }
    }

?>