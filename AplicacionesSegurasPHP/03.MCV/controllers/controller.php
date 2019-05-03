<?php
class MvcController{
    public function plantilla(){
        include "views/template.php";
    }

    public function enlacesPaginasController(){
        if(isset($_GET['action'])){
            $enlaceController = $_GET['action'];
        }else{
            $enlaceController = 'index';
        }

        $respuesta = EnlacesPaginas::enlacesPaginasModel($enlaceController);
        include $respuesta;
    }
}
?>