<?php
    $meses = array('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre');
    //sort($meses);
    rsort($meses);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Meses del año</h1>
    <ul>
        <?php
            foreach ($meses as $key => $valor) {
                echo '<li>'.$valor.'</li>';
            }
        ?>
    </ul>
</body>
</html>