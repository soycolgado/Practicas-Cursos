<?php
    if(isset($_SESSION['usuario'])){
        header('Location: index.php');
    }

    if($_SERVER['REQUEST_METHOD']=='POST'){
        $usuario = strtolower($_POST['usuario']);
        $usuario = filter_var($usuario,FILTER_SANITIZE_STRING);
        $password = $_POST['password'];
        $password2 = $_POST['password2'];
        
        $errores = '';
        
        if(empty($usuario) || empty($password) || empty($password2)){
            $errores .= '<li>Por favor rellena todos los campos</li>';
        }else{
            try{
                $conexion = new PDO('mysql:host=localhost; dbname=login_practica', 'root', '');
                
            }catch(PDOException $e){
                'Error: '.$e->getMessage();
            }
            
            $statement = $conexion->prepare("SELECT * FROM usuarios WHERE usuario = :usuario LIMIT 1");
            $statement->execute(array(':usuario' => $usuario));
            $resultado = $statement->fetchAll();
            
            if($resultado != false){
                $errores.='<li>El usuario ya existe</li>';
            }
            
            $password = hash('sha512',$password);
            $password2 = hash('sha512',$password2);
            
            if($password != $password2){
                $errores .= '<li>Las contraseñas no son iguales</li>';
            }
        }

        if($errores == ''){
            $statement = $conexion->prepare("INSERT INTO usuarios(id,usuario,pass) VALUES (null,:usuario,:pass)");
            $statement->execute(array(':usuario' => $usuario, ':pass' => $password));
            header('Location: login.php');
        }
    }
    require 'views/registrate.view.php';
?>