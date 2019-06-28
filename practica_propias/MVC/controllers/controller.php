<?php 
	class MvcController{

		public function plantilla(){
			include "views/template.php";
		}

		public function enlacesPaginasController(){
			if(isset($_GET['action'])){
				$enlace = $_GET['action'];
			}else{
				$enlace = "index";
			}
			$respuesta = EnlacesPaginas::enlacesPaginasModel($enlace);
			include $respuesta;
		}


	}
 ?>