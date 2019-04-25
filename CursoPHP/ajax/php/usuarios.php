<?php
header("Content-type: application/json; charset=utf-8");

$respuesta = [
    [
        "nombre"=>"Nestor",
        "id"=>1,
        "edad"=>32,
        "pais"=>"Argentina",
        "email"=>"nestor@outlook.com"
    ],
    [
        "nombre"=>"Canela",
        "id"=>2,
        "edad"=>38,
        "pais"=>"Argentina",
        "email"=>"canela@hotmail.com"
    ]
];

echo json_encode($respuesta);
?>