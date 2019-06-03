$(document).ready(function () {
    var cajas = $('.caja');

    $(".caja").on('click',function(){
        $(this).toggleClass('color');
    });
});