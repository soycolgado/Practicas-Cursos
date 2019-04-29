<?php
class EnlacesPaginas{
    static public function enlacesPaginasModel($enlaceModel){
        if($enlaceModel == 'inicio' || $enlaceModel == 'nosotros' || $enlaceModel == 'servicios' || $enlaceModel == 'contactenos'){
            $ruta = $enlaceModel;
        }else{
            if($enlaceModel == 'index'){
                $ruta = 'inicio';
            }else{
                $ruta = 'inicio';
            }
        }
        $respuesta = "views/modules/".$ruta.".php";
        return $respuesta;
    }
}

?>