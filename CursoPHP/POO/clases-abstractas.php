<?php
class Persona{
    abstract public function saludo(){
        return 'Hola';
    }
}

class Estudiante extends Persona{

}

$nestor = new Estudiante();
echo $nestor->saludo();
?>