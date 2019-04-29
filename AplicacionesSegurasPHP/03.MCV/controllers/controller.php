<?php
    class MvcController{

        #LLAMADA A LA PLANTILLA
        #-------------------------------------------------------
        public function plantilla(){
            include "views/template.php";
        }

        #INTERACCION CON EL USUARIO
        #--------------------------------------------------------
        public function enlacesPaginasController(){

            if(isset($_GET['action'])){

                $enlacesController = $_GET['action'];
            }else{
                $enlacesController = "index";
            }

            $respuesta = PaginasEnlaces::enlacesPaginasmodel($enlacesController);
            include $respuesta;
        }
    }
?>