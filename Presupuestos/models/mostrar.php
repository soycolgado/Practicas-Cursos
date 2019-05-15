<?php
include 'conexion.php';
$link = Conexion::conectar();
// $link = new PDO("mysql:host=localhost;dbname=Pruebas","root","root");
    header("Content-type: application/json; charset=utf-8");
    if(isset($_GET['action'])){
        if($_GET['action']=="procesador" || $_GET['action']=="mother" || $_GET['action']=="memoria" || $_GET['action']=="disco"){
            $tabla = $_GET['action'];
            
            $link->query("SET NAMES utf8");
            $stmt = $link->prepare("SELECT * FROM $tabla");
            $stmt->execute();
            $resultado = $stmt->fetchAll();
            $respuesta = array();
            foreach($resultado as $fila){
                $respuesta[] = $fila;
            }



        }
    }
    echo json_encode($respuesta);
?>