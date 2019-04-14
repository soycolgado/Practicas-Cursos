<?php
    // $resultado = file_exists('documento.txt');
    // echo file_get_contents('documento.txt');
    // file_put_contents('documento.txt'," \n Creo que soy el mejor del mundo",FILE_APPEND);
    // echo file_get_contents('documento.txt');

    file_put_contents('documento.txt','');
    for($f = 1; $f <=10; $f++){
        file_put_contents('documento.txt',$f."\n",FILE_APPEND);
    }
?>