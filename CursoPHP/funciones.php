<?php
// function saludo($nom){
//     echo 'Saludo, '.$nom.'<br>';
// }

// saludo('Nestor');
// saludo('Nestor');

// function sumar($numero1, $numero2){
//     $resultado = $numero1 + $numero2;
//     echo $resultado;
// }

// sumar(50,55);

function suma($numero1, $numero2){
    $resultado = $numero1 + $numero2;
    return $resultado;
}

$resultado = suma(5,10);
echo $resultado;
?>