<?php
class PaginasEnlaces{
    static public function enlacesPaginasModel($enlacesModel){
        if($enlacesModel == 'inicio'||
        $enlacesModel == 'nosotros'||
        $enlacesModel == 'servicios'||
        $enlacesModel == 'contactenos'){
            $module = "views/modules/".$enlacesModel.".php";
        }elseif($enlacesModel == 'index'){
            $module = "views/modules/inicio.php";
        }else{
            $module = "views/modules/inicio.php";
        }
        return $module;
    }
}

?>