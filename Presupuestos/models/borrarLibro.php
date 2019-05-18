<?php
class Borrar extends Conexion{
    public static function borrarLibro(){
        $link = Conexion::conectar();
        $tabla = array("disco","memoria","mother","procesador","vga","fuente");
        for($i = 0; $i < count($tabla); $i++){
        $borrar = $link->prepare("DELETE FROM $tabla[$i]");
        $borrar->execute();
        }
    }
}
?>