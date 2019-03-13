<?php
    class Usuario{
        public $nombre;
        public $correo;

        function __construct($nombre,$correo)
        {
            $this->nombre = $nombre;
            $this->correo = $correo;
        }

        public function mostrarNombre(){
            echo 'Su nombre es: '.$this->nombre.'<br>';
            return $this;
        }

        public function mostrarCorreo(){
            echo 'Su correo es: '.$this->correo.'<br>';
            return $this;
        }
    }

    $nestor = new Usuario('Nestor Bardel','Nestor@gmail.com');
    $nestor->mostrarNombre()->mostrarCorreo();

?>