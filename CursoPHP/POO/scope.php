<?php
class Usuario{
    public $nombre;
    private $correo;

    function __construct($nombre,$correo)
    {
        $this->nombre = $nombre;
        $this->correo = $correo;
    }

    public function mostrarInformacion(){
        return $this->correo;
    }
}

class Miembro extends Usuario{

}

$nestor = new Miembro('nestor bardel','nestor@gmail.com');
echo $nestor->nombre;
?>