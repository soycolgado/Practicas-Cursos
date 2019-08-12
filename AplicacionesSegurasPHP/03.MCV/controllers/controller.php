<?php
	class MvcController{
		public function plantilla(){
			include "views/template.php";
		}

		public function enlacesPaginasController(){
			$enlaces = $_GET['action'];
			$respuesta = EnlacesPaginas::enlacesPaginasModel($enlaces);
			include $respuesta;
		}
	}
?>