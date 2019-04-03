<?php
    session_start();
    if(isset($_SESSION['usuario'])){
        header('Location: index.php');
    }

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $usuario = $_POST['usuario'];
        $usuario = filter_var(strtolower($usuario),FILTER_SANITIZE_STRING);
        $password = $_POST['password'];
        $password2 = $_POST['password2'];

        // echo $usuario.$password.$password2;
        
        $errores = '';

        if(empty($usuario) || empty($password) || empty($password2)){
            $errores.='<li>Por favor rellena todos los campos correctamente</li>';
        }else{
            try{
                $conexion = new PDO('mysql:host=localhost; dbname=login_practica','root','');

            }catch(PDOException $e){
                echo 'Error: '.$e->getMessage();
            }

            $statement = $conexion->prepare("SELECT * FROM usuarios WHERE usuario = :usuario LIMIT 1");
            $statement->execute(array(':usuario' => $usuario));
            $resultado = $statement->fetchAll();

            if($resultado != false){
                $errores.= '<li>El nombre de usuario ya existe</li>';
            }
        }
    }
    require 'views/registrate.view.php';
?>