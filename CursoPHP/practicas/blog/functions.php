<?php
    // require 'admin/config.php';
    function conexion ($db_config){
        try{
            $conexion = new PDO("mysql:host=localhost;dbname=".$db_config['basedatos'],$db_config['usuario'],$db_config['pass']);
            return $conexion;
        }catch(PDOException $e){
            return false;
        }
    }

    function limpiarDatos($datos){
        $datos = trim($datos);
        $datos = stripslashes($datos);
        $datos = htmlspecialchars($datos);
        return $datos;
    }

    function pagina_actual(){
        return isset($_GET['p']) ? $_GET['p'] : 1;
    }

    function obtener_post($post_por_pagina,$conexion){
        $inicio = (pagina_actual() > 1) ? pagina_actual() * $post_por_pagina - $post_por_pagina : 0;
    }

?>