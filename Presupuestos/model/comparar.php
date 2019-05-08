<?php
    class Comparar{
        public static function compararPrecio($precio,$precioMasBajo,$c){
            $precio = (float)$precio;
            $precioColumna = array("precio" => $precioMasBajo,"columna" => $c);
            if($precio != null && $precio < $precioMasBajo){
                $precioMasBajo = $precio;
                $col = $c;
                $precioColumna["precio"] = $precioMasBajo;
                $precioColumna["columna"] = $col;
            }
            return $precioColumna;
        }
    }
    
?>