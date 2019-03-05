<?php
$array = array(3,4,1,6,3);

function comparar($a,$b){
    return $a <=> $b;
    

}


usort($array,'comparar');
echo join('-',$array);
?>