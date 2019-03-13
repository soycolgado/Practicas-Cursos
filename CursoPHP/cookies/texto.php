<?php
    $tamaño = $_COOKIE['font-size'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        p{
            font-size:<?php echo $tamaño;?>;
        }
    </style>
</head>
<body>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores ut maiores possimus, fuga, nihil, error dolore consectetur quam iusto quod dolorum. Ex praesentium, quod nostrum explicabo labore fuga soluta aliquid.</p>
</body>
</html>