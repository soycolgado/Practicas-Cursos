<?php
require_once "conexion.php";

class Datos extends Conexion{
   static public function registroUsuariosModel($datosModel,$tabla){
        $stmt = Conexion::conectar()->prepare("INSERT INTO usuarios(usuario,password,email) VALUES(:usuario,:password,:email)");
        $stmt->bindParam(":usuario",$datosModel["usuario"],PDO::PARAM_STR);
        $stmt->bindParam(":password",$datosModel["password"],PDO::PARAM_STR);
        $stmt->bindParam(":email",$datosModel["email"],PDO::PARAM_STR);

        if($stmt->execute()){
            return "success";
        }else{
            return "error";
        }
    
    }

    #INGRESO USUARIO
    static public function ingresoUsuariosModel($datosModel,$tabla){
        $stmt = Conexion::conectar()->prepare("SELECT usuario,password FROM $tabla WHERE usuario = :usuario");
        $stmt->bindParam(":usuario",$datosModel["usuario"],PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetch();
    }

    #VISTA USUARIOS
    static public function vistaUsuariosModel($tabla){
        $stmt = Conexion::conectar()->prepare("SELECT * FROM usuarios");
        $stmt->execute();
        return $stmt->fetchAll();
    }
}
?>