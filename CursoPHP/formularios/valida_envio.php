<?php
    // if($_SERVER['REQUEST_METHOD'] == 'GET'){
    //     echo "Los datos se enviaron por GET";
    // }else{
    //     echo "Los datos se enviaron por POST";
    // }

    if(isset($_POST['submit'])){
        echo "Los datos fueron enviados correctamente";
    }
?>