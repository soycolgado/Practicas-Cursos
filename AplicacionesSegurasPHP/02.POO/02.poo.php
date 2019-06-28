<?php 
	class Automovil{
		public $marca;
		public $modelo;

		public function mostrar(){
			echo " <p>Hola! soy un $this->marca, modelo $this->modelo </p> ";
		}
	}

	$a = new Automovil();
	$a->marca = "Hyundai";
	$a->modelo = "Ni idea";
	$a->mostrar();
 ?>