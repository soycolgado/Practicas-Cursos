<?php
class Paginas{

    public static function enlacesPaginasModel($enlacesModel){
        if($enlacesModel == 'listas' || $enlacesModel == 'presupuestos' || $enlacesModel == 'acerca'){
            $module = 'views/modules/'.$enlacesModel.'.php';
        }else if($enlacesModel == 'index'){
            $module = 'views/modules/home.php';
        }

        return $module;
    }

}
?>