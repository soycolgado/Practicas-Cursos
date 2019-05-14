<?php
class Paginas{
    static public function enlacesPaginasModel($enlaceModel){
        if($enlaceModel == "lista"){
            $modulo = "views/module/".$enlaceModel.".php";
        }
    }
}
?>