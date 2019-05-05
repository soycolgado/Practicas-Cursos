<?php
    class Conexion{
        public static function conectar(){
            $link = new PDO("mysql:host=localhost;dbname=cursosphp", "root", "");
            return $link;
        }
    }
?>