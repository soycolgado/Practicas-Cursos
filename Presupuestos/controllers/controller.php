<?php
class MvcController{
    public function pagina(){
        include 'views/template.php';
    }

    public function enlacesPaginaController(){
        $(isset($_GET['action'])){
            $enlace = $_GET['action'];
        }else{
            $enlace = 'index';
        }

        $respuesta = 
    }
}
?>