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
        return $this->nombre.' tiene '.$this->edad.' años de edad y es de '.$this->pais;
    }
}

class Estudiante extends Persona{
    function __construct($nombre,$edad,$pais,$carrera)
    {
        parent::__construct($nombre,$edad,$pais);
        $this->carrera = $carrera;
    }
}

class Trabajador extends Persona{
    function __construct($nombre,$edad,$pais,$profesion)
    {
        parent::__construct($nombre,$edad,$pais);
        $this->profesion = $profesion;
    }
}

$nestor = new Estudiante('Nestor Bardel',32,'Argentina','Desarrollador');
// echo $nestor->mostrarInformacion();
$facha = new Trabajador('Facha',32,'Argentina','Programador Full Stack');
echo $facha->profesion;

?>