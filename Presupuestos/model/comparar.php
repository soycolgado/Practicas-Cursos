<?php
    class Comparar{
        public static function compararPrecio($precio,$precioMasBajo){
            $precio = (float)$precio;
            if($precio != null && $precio < $precioMasBajo){
                $precioMasBajo = $precio;
            }
            
            return $precioMasBajo;
        }
    }
?>