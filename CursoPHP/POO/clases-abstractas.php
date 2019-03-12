<?php
abstract class Persona{
    public function saludo(){
        return 'Hola';
    }
}

class Estudiante extends Persona{

}

$nestor = new Estudiante();
echo $nestor->saludo();s
?>