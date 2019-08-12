<?php
	class Automovil{
		public $marca;
		public $modelo;

		public function mostrar(){
			echo "<p>Hola soy un $this->marca, modelo $this->modelo<p>";
		}
	}

	$a = new Automovil();
	$a->marca = "Toyota";
	$a->modelo = "Corola";
	$a->mostrar();

	$b = new Automovil();
	$b->marca = "Hyundai";
	$b->modelo = "Accent Vision";
	$b->mostrar(); 

?>