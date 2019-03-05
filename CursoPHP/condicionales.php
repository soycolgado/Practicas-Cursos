<?php
    $edad = 19;
    $nombre = 'Nestr';

    if($edad >= 18 && $nombre == 'Nestor'){
        echo '<h1> Bienvenido </h1>';
    }

    if($edad < 18 || $nombre != 'Nestor'){
        echo '<h1>Eres menor de edad y/o no te llamas nestor</h1>';
    }
?>