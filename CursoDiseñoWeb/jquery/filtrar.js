$(document).ready(function(){
    //SELECCIONA LA PRIMERA CAJA
    $('.caja').first().css({background:'#000'});
    //SELECCIONA LA ULTIMA CAJA
    $('.caja').last().css({background:'#000'});
    //SELECCIONA CON EL INDEX
    $('.caja').eq(2).css({background:'#000'});
    //SELECCIONAR CAJA DEPENDIENDO DE ALGUN ATRIBUTO
    $('.caja').filter('#segunda').css({background:'#000'});
    //SELECCIONAR FILTRANDO POR NEGACION
    $('.caja').not('#segunda').css({background:'#ff2'});
});