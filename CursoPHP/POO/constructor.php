<?php

class Persona{
    public $edad;
    public $nombre;
    public $pais;
    
    function __construct($nombre,$edad,$pais)
    {
        $this->nombre = $nombre;
        $this->edad = $edad;
        $this->pais = $pais;
    }

    public function mostrar(){
        echo $this->nombre.' tiene '.$this->edad.' de edad y es de '.$this->pais;
    }
}

$nestor = new Persona('Nestor',32,'Argentina');
$nestor->mostrar();
echo "<br>";
$miriam = new Persona('Miriam',23,'Argentina');
$miriam->mostrar();

?>