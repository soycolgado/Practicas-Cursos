<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Prueba</title>
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
		<h1>BLACKMAMBA</h1>
	</header>
	<?php 
		include "navegacion.php";
	 ?>
	<section>
		<?php 
			$mvc = new MvcController();
			$mvc -> enlacesPaginasController();
		 ?>
	</section>
</body>
</html>