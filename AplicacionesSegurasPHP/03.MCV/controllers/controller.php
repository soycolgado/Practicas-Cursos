<?php
	class MvcController{
		public function plantilla(){
			include "views/template.php";
		}

		public function enlacesPaginasController(){
			if(isset($_GET['action'])){
				$enlaces = $_GET['action'];
			}else{
				$enlaces = "index";
			}

			
			$respuesta = EnlacesPaginas::enlacesPaginasModel($enlaces);
			include $respuesta;
		}
	}
?>