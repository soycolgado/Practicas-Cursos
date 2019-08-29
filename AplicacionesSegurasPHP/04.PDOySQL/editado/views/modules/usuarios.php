<?php
	session_start();
	if(!$_SESSION['validar']){
		header('location:index.php?action=ingresar');
	}


?>

<h1>USUARIOS</h1>

	<table border="1">
		
		<thead>
			
			<tr>
				<th>Usuario</th>
				<th>Contraseña</th>
				<th>Email</th>
				<th></th>
				<th></th>

			</tr>

		</thead>

		<tbody>
			<?php
				$vista = new MvcController();
				$vista->vistaUsuariosController();
				$vista->borrarUsuarioController();
			?>
			

		</tbody>



	</table>

	<?php
		if(isset($_GET['action'])){
			if($_GET['action'] == "cambio"){
				echo "Actualizacion exitosa";
			}else if($_GET['action'] == "borrar"){
				echo "Borrado exitoso";
			}
		}
		
	
	?>
