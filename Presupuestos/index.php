<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<?php
require_once 'model/conexion.php';
require_once 'Classes/PHPExcel.php';
require_once 'model/cargarLibro.php';
require_once 'model/comparar.php';
$archivo = "libro.xlsx";
$inputFileType = PHPExcel_IOFactory::identify($archivo);
$objReader = PHPExcel_IOFactory::createReader($inputFileType);
$objPHPExcel = $objReader->load($archivo);
$sheet = $objPHPExcel->getSheet(0); 
$highestRow = $sheet->getHighestRow(); 
$highestColumn = $sheet->getHighestColumn();

for ($row = 21; $row <= $highestRow; $row++){   
    $precioMasBajo = 9999;
        $descripcion = strtolower($sheet->getCell("B".$row)->getValue());
        $tipo = strtolower($sheet->getCell("C".$row)->getValue());
        if(preg_match("/microp+/",$descripcion)){
            $tabla = "procesadores";
            // echo $sheet->getCell("A".$row)->getValue()." - ";
            // echo $sheet->getCell("B".$row)->getValue()." - ";
            // echo $sheet->getCell("C".$row)->getValue();
            // echo "<br>";
            $sku = $sheet->getCell("A".$row)->getValue();
            $descripcion = $sheet->getCell("B".$row)->getValue();
            $marca = $sheet->getCell("D".$row)->getValue();
            for($col = "F"; $col != $highestColumn; $col++){
                $precio = $sheet->getCell($col.$row)->getValue();
                $precioMasBajo = Comparar::compararPrecio($precio,$precioMasBajo);
                // $precio = (int)$precio;
                // if($precio != null && $precio < $precioMasBajo){
                //     $precioMasBajo = $precio;
                // }
                
            }
            echo $precioMasBajo;
            // echo $precioMasBajo ;  
                echo "<br>";
            
            CargarLibro::cargar($sku,$descripcion,$marca);
        }
}
?>
</body>
</html>