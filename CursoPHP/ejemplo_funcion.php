<?php
function calcular_area_triangulo($base,$altura){
    $resultado = ($base * $altura)/2;
    return $resultado;
}

$area_triangulo = calcular_area_triangulo(10,10);
echo 'El area del triangulo es: '.$area_triangulo.'m2';
?>