<?php
class Persona{
    public static $dia = '13 de Septiembre';

    public static function saludo($nombre = null){
        if($nombre){
            return "Buen dia, ".$nombre;
        }else{
            return "Buen dia";
        }
    }
}

echo Persona::saludo('nestor');
?>