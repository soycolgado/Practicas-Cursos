$(document).ready(function () {
    // $("#boton").on('click',function(){
    //     $('#caja').animate({
    //         width:'300px',
    //         opacity:'0.2'
    //     },1000,function(){alert('Fin de la animacion');});
    // });

    $('#boton').on('click',function(){
        $('#caja').animate({
            marginLeft: '+=20px'
        },200);
    });
});