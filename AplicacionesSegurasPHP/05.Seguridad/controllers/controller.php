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
			if(preg_match('/^[a-zA-Z0-9]+$/', $_POST['usuarioRegistro']) && preg_match('/^[a-zA-Z0-9]+$/', $_POST['passwordRegistro']) && preg_match('/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/', $_POST['emailRegistro'])){

				$encriptar = crypt($_POST['passwordRegistro'], '$2a$07$SYPdfPzsxvFivA3N4oatN.SmWksprTK4cQyfvpozbaxo7hsDa7Dg2');

			$datosController = array("usuario" => $_POST['usuarioRegistro'],"password"=>$encriptar,"email"=>$_POST['emailRegistro']);
			$respuesta = Datos::registroUsuarioModel($datosController,"usuarios");



			if($respuesta == "success"){
				header("Location: index.php?action=ok");
			}else{
				header("Location: index.php");
			}
			
			}
		}
	}

	#INGRESO DE USUARIOS
	#----------------------------------------------------------------------------------------
	public function ingresoUsuarioController(){
		if(isset($_POST['usuarioIngreso'])){

			if(preg_match('/^[a-zA-Z0-9]+$/', $_POST['usuarioIngreso']) && preg_match('/^[a-zA-Z0-9]+$/', $_POST['passwordIngreso'])){

				$encriptar = crypt($_POST['passwordIngreso'], '$2a$07$SYPdfPzsxvFivA3N4oatN.SmWksprTK4cQyfvpozbaxo7hsDa7Dg2');

				$datosController = array("usuario"=>$_POST['usuarioIngreso'], "password" => $encriptar);
				$respuesta = Datos::ingresoUsuarioModel($datosController,"usuarios");

				$intentos = $respuesta['intentos'];
				$usuario = $_POST['usuarioIngreso'];
				$maximoIntentos = 2;

				if($intentos < $maximoIntentos){


					if($respuesta['usuario'] == $datosController['usuario'] && $respuesta['password'] == $encriptar){

						session_start();
						$_SESSION['validar'] = true;
						$intentos = 0;
						$datos = array("usuarioActual"=>$usuario, "actualizarIntentos" => $intentos);

						$respuestActualizarIntentos = Datos::intentosUsuarioModel($datos,"usuarios");

						header('location: index.php?action=usuarios');
					}else{
						++$intentos;

						$datos = array("usuarioActual"=>$usuario, "actualizarIntentos" => $intentos);

						$respuestActualizarIntentos = Datos::intentosUsuarioModel($datos,"usuarios");
						header('location: index.php?action=fallo');
					}
				}else{
					$intentos = 0;
					$datos = array("usuarioActual"=>$usuario, "actualizarIntentos" => $intentos);

					$respuestActualizarIntentos = Datos::intentosUsuarioModel($datos,"usuarios");
					header('location: index.php?action=fallo3Intentos');
				}
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

			$encriptar = crypt($_POST['passwordEditar'], '$2a$07$SYPdfPzsxvFivA3N4oatN.SmWksprTK4cQyfvpozbaxo7hsDa7Dg2');

			$datos = array("id" => $_POST['idEditar'],
				"usuario" => $_POST['usuarioEditar'],
				"password" => $encriptar,
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