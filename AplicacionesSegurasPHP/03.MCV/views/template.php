<!DOCTYPE html>
<html lang="es">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Tempplate</title>
	<link rel="stylesheet" href="">
	<style>

		header{
			position:relative;
			margin:auto;
			text-align:center;
			padding:5px;	
		}
		
		nav{
			position:relative;
			margin:auto;
			width:100%;
			height:auto;
			background:black;
		}

		nav ul{
			position:relative;
			margin:auto;
			width:50%;
			text-align: center;
		}

		nav ul li{
			display:inline-block;
			width:24%;
			line-height: 50px;
			list-style: none;
		}

		nav ul li a{
			color:white;
			text-decoration: none;
		}

		section{
			position:relative;
			padding:20px;
		}
	
	</style>

</head>
<body>
	<header>
		<h1>LOGOTIPO</h1>
	</header>
	<?php
		include "modules/navegacion.php";
	?>
	<section>
		
	</section>
</body>
</html>