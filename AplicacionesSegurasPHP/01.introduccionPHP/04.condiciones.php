<?php
#condiciones IF
$a = 5;
$b = 10;

if($a > $b){
    echo "a es mayor que b";
}elseif($a == $b){
    echo "a es igual a b";
}else{
    echo "a es menor que b";
}

echo "<br><br>";

#Condicional Switch
$dia = "sa";
switch($dia){
    case 'sabado':
    echo "Voy a estudiar PHP";
    break;
    case 'viernes':
    echo "Voy a la fiesta";
    break;
    default:
    echo "Voy a la universidad";
    break;
}
echo "<br><br>";


#Ciclo while
$n = 1;
while($n < 5){
    echo $n;
    $n++;
}
echo "<br><br>";
#Ciclo Do While
$p = 1;
do{
    echo $p;
    $p++;
}while($p <=5);
echo "<br><br>";

#Ciclo For
for($i = 0; $i <= 5; $i++){
    echo $i;
}
?>