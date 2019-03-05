<?php
declare(strict_types = 1);
function cuadrado(int $numero){
    return $numero * $numero;
}

$numero = 0;
echo 'El cuadrado del numero '.$numero.' es '.cuadrado($numero);
?>