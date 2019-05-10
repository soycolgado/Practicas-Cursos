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
    require_once 'conexion.php';
    require_once '../Classes/PHPExcel.php';
    require_once 'cargarLibro.php';
    require_once 'comparar.php';
    $archivo = "../libro.xlsx";
    $inputFileType = PHPExcel_IOFactory::identify($archivo);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
    $objPHPExcel = $objReader->load($archivo);
    $sheet = $objPHPExcel->getSheet(0);
    $highestRow = $sheet->getHighestRow();
    $highestColumn = $sheet->getHighestColumn();

    //Inicializacion de una variable que va a contener el nombre de la tabla
    
    //Ciclo que recorre las filas
    for ($row = 2; $row <= $highestRow; $row++) {
        $tabla = "";
        $precioMasBajo = array("precio" => 9999,"distri"=>"");
        // $precioMasBajo = 9999; //Inicializacion
        //Tomo la fila B que es la descripcion para poder comparar su valor
        $descripcion = strtolower($sheet->getCell("B".$row)->getValue());
        $tipo = strtolower($sheet->getCell("C".$row)->getValue());
        $sku = $sheet->getCell("A" . $row)->getValue();
        if (preg_match("/microp+/", $descripcion)) {
            $tabla = "procesador";
        } elseif (preg_match("/mother+/", $descripcion) && ($sku != "SKU")) {
            $tabla = "mother";
        } elseif (preg_match("/memoria/", $descripcion) && ((preg_match("/ddr+/", $tipo)) || (preg_match("/sodimm/", $tipo)))) {
            $tabla = "memoria";
        }elseif(preg_match("/d..co+/",$descripcion) && (($tipo == "ssd") || (preg_match("/notebook+/",$tipo)) || (preg_match("/pc/",$tipo)) )){
            $tabla = "disco";
        }
        if (!empty($tabla)) {
            
            // $sku = $sheet->getCell("A" . $row)->getValue();
            $marca = $sheet->getCell("D" . $row)->getValue();
            for ($col = "F"; $col != $highestColumn; $col++) {
                $c = $sheet->getCell($col."1")->getValue();
                // echo $c;
                $precio = $sheet->getCell($col . $row)->getValue();
                $precioMasBajo = Comparar::compararPrecio($precio, $precioMasBajo,$c);
                // $precio = (int)$precio;
                // if($precio != null && $precio < $precioMasBajo){
                //     $precioMasBajo = $precio;
                // }
                

                //Llamada al metodo de carga
            }
            // echo "$sku - $descripcion - $marca - ".$precioMasBajo['precio']." - ".$precioMasBajo['distri'];
            // echo "<br>";
        CargarLibro::cargar($tabla,$sku, $descripcion, $marca,$precioMasBajo['precio'],$precioMasBajo['distri']);
        }
    }
    ?>
</body>

</html>