<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="get">
        <input type="text" name="nombre" placeholder="Nombre: " id="">
        <br>
        <label for="hombre">Hombre</label>
        <input type="radio" name="sexo" value="hombre" id="hombre">
        <br>
        <label for="mujer">Mujer</label>
        <input type="radio" name="sexo" id="mujer" value="mujer">
        <br>
        <select name="year" id="year">
            <option value="2000">2000</option>
            <option value="2001">2001</option>
            <option value="2003">2003</option>
        </select>
        <br>
        <label for="terminos">Terminos y condiciones</label>
        <input type="checkbox" name="terminos" id="terminos">
        <br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>