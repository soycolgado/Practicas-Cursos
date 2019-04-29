<?php
class Automovil{
    public $marca;
    public $modelo;

    public function mostrar(){
        echo '<p>Hola! soy un '.$this->marca.', modelo '.$this->modelo.'</p>';
    }
}

$auto = new Automovil();

$auto -> marca = "Toyota";
$auto -> modelo = "Corola";
$auto -> mostrar();

$autoB = new Automovil();
$autoB -> marca = "Hyundai";
$autoB -> modelo = "Accent Vision";
$autoB -> mostrar();
?>