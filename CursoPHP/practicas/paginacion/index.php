<?php

    try {
        //code...
    } catch (PDOException $e) {
        echo "Error: ".$e->getMessage();
        die();
    }
   require 'index.view.php';
?>