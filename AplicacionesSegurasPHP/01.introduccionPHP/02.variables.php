<?php
#variable numerica
$numero = 5;
echo "Esto es una variable numerica: ".$numero;
echo "<br><br>";
#variable Texto
$palabra = "Palabra";
echo "Esto es una variable de texto: ".$palabra;
echo "<br><br>";
#Variable boleana
$boleana = true;
echo "Esto es una variable boleana: ".$boleana;
echo "<br><br>";
#Variables de tipo Arreglo
$colores = array();
echo "Esto es una variable arreglo: ".$colores[0];
echo "<br><br>";
#Variables arreglo con propiedades(Asociativo)
$verduras = array("verdura1"=>"Lechuga","verdura2"=>"Cebolla");
echo "Arreglos asociativos: ".$verduras['verdura1'];

#variables Objeto
$frutas = (object)["fruta1"=>"pera","fruta2"=>"manzana"];
echo "Esto es una variable de tipo Objeto: ".$frutas->fruta1;
?>