<h1>REGISTRO DE USUARIO</h1>

<form method="post" onsubmit="return validarRegistro()">
	<label for="usuarioRegistro">Usuario</label>
	<input type="text" placeholder="Maximo 6 Caracteres" name="usuarioRegistro" id="usuarioRegistro" required>
	<label for="passwordRegistro">Contraseña</label>
	<input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" placeholder="Minimo 6 caracteres, incluir numero(s) y una mayuscula" name="passwordRegistro" id="passwordRegistro" required>
	<label for="emailRegistro">Correo Electronico</label>
	<input type="email" placeholder="Escriba su correo correctamente" name="emailRegistro" id="emailRegistro" required>
	
	<p style="text-align:center;"><input type="checkbox" name="terminos" id="terminos" value="">Acepta termino y condiciones</p>
	<input type="submit" value="Enviar">

</form>

<?php 
	
	$registro = new MvcController();
	$registro -> registroUsuarioController();

	if(isset($_GET['action'])){
		if($_GET['action'] == "ok"){
			echo "Registro Exitoso";
		}
	}
 ?>