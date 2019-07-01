<?php

class MvcController{

	#LLAMADA A LA PLANTILLA
	#-------------------------------------

	public function pagina(){	
		
		include "views/template.php";
	
	}

	#ENLACES
	#-------------------------------------

	public function enlacesPaginasController(){

		if(isset( $_GET['action'])){
			
			$enlaces = $_GET['action'];
		
		}

		else{

			$enlaces = "index";
		}

		$respuesta = Paginas::enlacesPaginasModel($enlaces);

		include $respuesta;

	}

	#REGISTRO DE USUARIOS
	#------------------------------------------------------------------------------------
	public function registroUsuarioController(){

		if(isset($_POST['usuarioRegistro'])){
			$datosController = array("usuario" => $_POST['usuarioRegistro'],"password"=>$_POST['passwordRegistro'],"email"=>$_POST['emailRegistro']);
			$respuesta = Datos::registroUsuarioModel($datosController,"usuarios");



			if($respuesta == "success"){
				header("Location: index.php?action=ok");
			}else{
				header("Location: index.php");
			}
			
		}
	}

	#INGRESO DE USUARIOS
	#----------------------------------------------------------------------------------------
	public function ingresoUsuarioController(){
		if(isset($_POST['usuarioIngreso'])){
			$datosController = array("usuario"=>$_POST['usuarioIngreso'], "password" => $_POST['passwordIngreso']);
			$respuesta = Datos::ingresoUsuarioModel($datosController,"usuarios");
			if($respuesta['usuario'] == $datosController['usuario'] && $respuesta['password'] == $datosController['password']){

				session_start();
				$_SESSION['validar'] = true;

				header('location: index.php?action=usuarios');
			}else{
				header('location: index.php?action=fallo');
			}
		}
	}

	#VISTA DE USUARIO
	public function vistaUsuariosController(){
		$respuesta = Datos::vistaUsuariosModel("usuarios");
		foreach($respuesta as $row => $item){
			echo '<tr>
				<td>'.$item['usuario'].'</td>
				<td>'.$item['password'].'</td>
				<td>'.$item['email'].'</td>
				<td><a href="index.php?action=editar&id='.$item['id'].'"><button>Editar</button></a></td>
				<td><a href="index.php?action=usuarios&idBorrar='.$item['id'].'"><button>Borrar</button></a></td>
			</tr>';
		}
	}

	#EDITAR USUARIO
	#-------------------------------------------------------------------------------------------
	public function editarUsuarioController(){
		$datos = $_GET['id'];
		$respuesta = Datos::editarUsuarioModel($datos,"usuarios");
		echo '<input type="hidden" value="'.$respuesta['id'].'" name="idEditar">
			<input type="text" value="'.$respuesta['usuario'].'" name="usuarioEditar" required>

			<input type="text" value="'.$respuesta['password'].'" name="passwordEditar" required>

			<input type="email" value="'.$respuesta['email'].'" name="emailEditar" required>

			<input type="submit" value="Editar">';
	}

	#ACTUALIZAR DATOS
	public function actualizarUsuarioController(){
		if(isset($_POST['usuarioEditar'])){
			$datos = array("id" => $_POST['idEditar'],
				"usuario" => $_POST['usuarioEditar'],
				"password" => $_POST['passwordEditar'],
				"email" => $_POST['emailEditar']);

			$respuesta = Datos::actualizarUsuarioModel($datos,"usuarios");
			if($respuesta == "success"){
				header('location: index.php?action=cambio');
			}else{
				echo "Error";
			}
		}
	}

	#BORRAR USUARIOS
	public function borrarUsuarioController(){
		if(isset($_GET['idBorrar'])){
			$datos = $_GET['idBorrar'];
			$respuesta = Datos::borrarUsuarioModel($datos,"usuarios");
			if($respuesta == "success"){
				header("location: index.php?action=usuarios");
			}
		}
	}

}

?>