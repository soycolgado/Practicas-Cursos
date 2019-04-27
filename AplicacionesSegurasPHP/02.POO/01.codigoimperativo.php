<?php

#codigo imperativo o espaguetti
    $automovil1 = (object)['marca'=>"Toyota",'modelo'=>'Corola'];
    $automovil2 = (object)['marca'=>'Hyundai', 'modelo'=>'Accent Vision'];

    function mostrar($automovil){
        echo '<p>Hola! soy un '.$automovil->marca.' modelo '.$automovil->modelo.'</p>';
    }

    mostrar($automovil1);
    echo '<br><br>';
    mostrar($automovil2);
?>
