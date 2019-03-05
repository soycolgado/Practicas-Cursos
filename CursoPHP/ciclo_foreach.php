<?php
$meses = array('Enero','Febrero',"Marzo",'Abril','Mayo','Junio','Julio','Agosto','Septiembre','octubre','Noviembre','Diciembre');

$alejandro = array('telefono' => 57878264, 'edad' => 33, 'pais' => 'Argentina');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Problema</title>
</head>
<body>
    <ul>
    <?php
        // foreach ($meses as $mes){
        //     echo '<li>'.$mes.'</li>';
        // }

        foreach($alejandro as $indice => $valor){
            echo '<li>'.$indice.': '.$valor.'</li>';
        }
    ?>
    </ul>

        
</body>
</html>