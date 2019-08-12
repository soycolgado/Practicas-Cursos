<?php
	class EnlacesPaginas{
		public static function enlacesPaginasModel($enlaces){
			if($enlaces == "inicio" || $enlaces == "nosotros" || $enlaces == "servicios" || $enlaces == "contactenos"){
				$module = "views/modules/".$enlaces.".php";
			}

			return $module;
		}
	}

?>