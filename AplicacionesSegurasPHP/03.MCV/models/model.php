<?php 
	class EnlacesPaginas{
		static public function enlacesPaginasModel($enlace){
			if($enlace == "nosotros" || $enlace == "servicios" || $enlace == "contactenos"){
				$modulo = "views/modules/".$enlace.".php";
				
			}elseif ($enlace == "index") {
				$modulo = "views/modules/inicio.php";
			}else{
				$modulo = "views/modules/inicio.php";
			}
			return $modulo;
		}

	}
 ?>