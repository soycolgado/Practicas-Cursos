$(document).ready(function () {
    var boton = $('#boton');
    boton.on('click',function(){
        // $(this).addClass('naranja');
        // $(this).removeClass('boton');
        $(this).toggleClass('naranja');
    });
});