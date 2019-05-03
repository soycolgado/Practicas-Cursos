<?php
class EnlacesPaginas{
    
    
    public static function enlacesPaginasModel($enlaceModel){
        if($enlaceModel == 'inicio' || $enlaceModel == 'servicios' || $enlaceModel == 'nosotros' || $enlaceModel == 'contactenos'){
            $modulo = 'views/modules/'.$enlaceModel.'.php';
        }else if($enlaceModel == 'index'){
            $modulo = 'views/modules/inicio.php';
        }else{
            $modulo = 'views/modules/inicio.php';
        }

        return $modulo;
    }
}
?>