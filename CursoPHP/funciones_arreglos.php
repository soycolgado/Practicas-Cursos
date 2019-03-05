<?php
$amigos = array('telefono' => 9873987, 'edad'=>33, 'pais'=>'Argentina');

//extrae los indices de un vector asociativo como si fueran variables
// extract($amigos);
// echo $telefono;

$semana = array('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo');

// $ultimoDia = array_pop($semana);
// foreach($semana as $dia){
//     echo $dia . '<br>';
// }

// echo 'El ultimo dia de la semana es: '.$ultimoDia;
// echo join(' / ',$semana);
// echo count($semana);
// sort($semana);
// foreach($semana as $dia){
//     echo $dia.'<br>';
// }
$semana_invertida = array_reverse($semana);
echo join(' - ',$semana_invertida);

?>