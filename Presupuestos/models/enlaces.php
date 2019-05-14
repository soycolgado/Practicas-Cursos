<?php
class Paginas{
    
    public static function enlacesPaginasModel($enlaces){
        if($enlaces == 'listas' || $enlaces == 'presupuestos' || $enlaces == 'acerca'){
            $modulo = 'views/modules/'.$enlaces.'.php';
        }else if ($enlaces == 'index'){
            $modulo = 'views/modules/home.php';
        }
        return $modulo;
    }

}
?>