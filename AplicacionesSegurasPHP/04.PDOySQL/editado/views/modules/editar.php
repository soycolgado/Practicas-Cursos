<?php
session_start();
if(!$_SESSION['validar']){
	header("location:index.php?action=ingresar");
	exit();
}

?>

<h1>EDITAR USUARIO</h1>

<form method="post">
	<?php
		$editar = new MvcController();
		$editar->editarUsuarioController();
		$editar->borrarUsuarioController();
	?>	

	
</form>
	<?php
		$actualizar = new MvcController();
		$actualizar->actualizarUsuarioController();
	?>

