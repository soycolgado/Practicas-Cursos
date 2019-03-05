<?php
#funciones sin parametros
function saludo(){
    echo "Hola<br>";
}
saludo();

#funciones con parametros
function despedida($adios){
    echo $adios."<br>";
}
despedida("chau");

#funciones con retorno
function retorno($retornar){
    return $retornar;
}
echo retorno("Retornar");
?>