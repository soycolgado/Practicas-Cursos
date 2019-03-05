<?php
$meses = array('Enero','Febrero',"Marzo",'Abril','Mayo','Junio','Julio','Agosto','Septiembre','octubre','Noviembre','Diciembre');

// for($i = 0 ; $i < count($meses) ; $i++){
//     echo $meses[$i].'<br>';
// }

$contador = 0;
while($contador  < count($meses)){
    echo $meses[$contador].'<br>';
    $contador++;
}
?>