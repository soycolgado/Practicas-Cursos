<?php
require 'admin/config.php';
require 'functions.php';

$conexion = conexion($db_config);
if(!$conexion){
    header('Location: error.php');
}

// obtener_post();
require 'views/index.view.php';
?>