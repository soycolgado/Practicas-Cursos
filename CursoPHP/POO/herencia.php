<?php
class Persona{
    public $nombre;
    public $edad;
    public $pais;

    function __construct($nombre,$edad,$pais)
    {
        $this->nombre = $nombre;
        $this->edad = $edad;
        $this->pais = $pais;
    }

    public function mostrarInformacion(){
        echo $this->nombre.' tiene '.$this->edad.' años de edad y es de '.$this->pais;
    }
}
?>