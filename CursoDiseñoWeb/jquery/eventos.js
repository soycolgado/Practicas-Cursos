$(document).ready(function(){
   var boton = $('#boton');
   
    boton.on('click',function(){
        alert('saludos');
        console.log('saludos');
    });

    var desactivar = $('#desactivar');
    desactivar.on('click',function(){
        boton.off('click');
    });

    $('a').on('click',function(e){
        e.preventDefault();
    })
});