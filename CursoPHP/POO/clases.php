<?php
class Persona{
    public $nombre;
    public $edad;
    public $pais;

    public function mostrarInformacion(){
        echo "Hola mundo";
    }
}

$carlos = new Persona();
$carlos->nombre = "Carlos";
$carlos->edad = 23;
$carlos->pais = 'Mexico';
$carlos->mostrarInformacion();
echo "<br>";
echo $carlos->nombre.' tiene '.$carlos->edad.' años';
echo "<br>";
$nestor = new Persona();
$nestor->nombre = "Nestor Flavio";
$nestor->edad = 32;
$nestor->pais = "Argentina";
$nestor->mostrarInformacion();
?>