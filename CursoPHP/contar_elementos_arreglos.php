<?php
    $meses = array('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre');

    echo count($meses);

    echo '<br>';
    $ultimo_mes = count($meses)-1;
    echo $meses[$ultimo_mes];
?>