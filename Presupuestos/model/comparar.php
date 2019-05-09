<?php
    class Comparar{
        public static function compararPrecio($precio,$precioMasBajo,$c){
            $precio = (float)$precio;
            // $precioColumna = array("precio" => $precioMasBajo, "distri" => $c);
            if($precio != null && $precio < $precioMasBajo["precio"]){
                $precioMasBajo["precio"] = $precio;
                $precioMasBajo["distri"] = $c;
            }
            return $precioMasBajo;
        }
    }
    
?>