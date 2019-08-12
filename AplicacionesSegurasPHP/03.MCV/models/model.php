<?php
	class EnlacesPaginas{
		public static function enlacesPaginasModel($enlaces){
			if($enlaces == "nosotros" || $enlaces == "servicios" || $enlaces == "contactenos"){
				$module = "views/modules/".$enlaces.".php";
			}elseif ($enlaces == "index") {
				$module = "views/modules/inicio.php";
			}else{
				$module = "views/modules/inicio.php";
			}

			return $module;
		}
	}

?>