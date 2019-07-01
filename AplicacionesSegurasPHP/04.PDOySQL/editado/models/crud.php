<?php 
	require "conexion.php";
	class Datos extends Conexion{

		public static function registroUsuarioModel($datosModel,$tabla){
			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(usuario, password, email) VALUES(:usuario, :password, :email)");

			$stmt->bindParam(':usuario',$datosModel['usuario'],PDO::PARAM_STR);
			$stmt->bindParam('password',$datosModel['password'],PDO::PARAM_STR);
			$stmt->bindParam(':email',$datosModel['email'],PDO::PARAM_STR);

			if($stmt -> execute()){
				return "success";
			}else{
				return "error";
			}
		}

		public static function ingresoUsuarioModel($datosModel,$tabla){
			$stmt = Conexion::conectar()->prepare("SELECT usuario,password FROM $tabla WHERE usuario = :usuario");
			$stmt->bindParam(":usuario",$datosModel['usuario'],PDO::PARAM_STR);
			$stmt->execute();
			return $stmt->fetch();
		}

		public static function vistaUsuariosModel($tabla){
			$stmt = Conexion::conectar()->prepare("SELECT id,usuario,password,email FROM $tabla");
			$stmt -> execute();
			return $stmt -> fetchAll();
		}

		public static function editarUsuarioModel($datos,$tabla){
			$stmt = Conexion::conectar()->prepare("SELECT id,usuario,password,email FROM $tabla WHERE id = :id");
			$stmt -> bindParam(":id",$datos,PDO::PARAM_INT);
			$stmt -> execute();
			return $stmt -> fetch();
			$stmt -> close();

		}

		public static function actualizarUsuarioModel($datos,$tabla){
			$stmt = Conexion::conectar() -> prepare("UPDATE $tabla SET usuario = :usuario, password = :password, email = :email WHERE id = :id");

			$stmt -> bindParam(":usuario",$datos['usuario'],PDO::PARAM_STR);
			$stmt -> bindParam(":password",$datos['password'],PDO::PARAM_STR);
			$stmt -> bindParam(":email", $datos['email'],PDO::PARAM_STR);
			$stmt -> bindParam(":id",$datos['id'],PDO::PARAM_INT);

			if($stmt -> execute()){
				return "success";
			}else{
				return "error";
			}
		}

		public static function borrarUsuarioModel($datos,$tabla){
			$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");
			$stmt->bindParam(":id",$datos,PDO::PARAM_INT);
			if($stmt->execute()){
				return "success";
			}else{
				return "error";
			}

			$stmt->close();
		}
	}


 ?>