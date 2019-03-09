<?php
class Persona{
    public $edad;
    public $nombre;
    public $pais;

    public function mostrar(){
        echo $this->nombre.' tiene '.$this->edad.' de edad y es de '.$this->pais;
    }
}


$nestor = new Persona();
$nestor->nombre = 'Nestor Flavio';
$nestor->edad = 32;
$nestor->pais='Argentina';

$nestor->mostrar();
?>