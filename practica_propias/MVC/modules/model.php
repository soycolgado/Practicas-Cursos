<?php 
	class EnlacesPaginas{

		public static function enlacesPaginasModel($enlace){
			if($enlace == "servicios" || $enlace == "nosotros" || $enlace == "contactenos"){
				$modulo = "views/".$enlace.".php";
			}else if($enlace == "index"){
				$modulo = "views/inicio.php";
			}else{
				$modulo = "views/inicio.php";
			}
			return $modulo;
		}

	}
 ?>