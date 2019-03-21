<?php
   try{
        $conexion = new PDO('mysql:host=localhost; dbname=paginacion_pagina','root','');
   }catch(PDOException $e){
       echo "Error: ".$e->getMessage();
   }

   $pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
   $postPorPagina = 5;
   $inicio = ($pagina > 1) ? ($pagina * $postPorPagina - $postPorPagina) : 0;
   $articulos = $conexion->prepare("SELECT SQL_CALC_FOUND_ROWS * FROM articulos LIMIT $inicio,$postPorPagina");
   $articulos->execute();
   $articulos = $articulos->fetchAll();

   if(!$articulos){
       header('Location: index.php');
   }

   $totalArticulos = $conexion->query('SELECT FOUND_ROWS AS total');
   $totalArticulos = $totalArticulos->fetch()['total'];

   $numeroPaginas = ceil($totalArticulso / $postPorPagina);

    require "index.view.php";
?>