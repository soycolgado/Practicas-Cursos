$(document).ready(function(){
    // $("#boton").click(function(){
    //     alert("Hola");
    // });

    var boton = $('#boton');

    function saludos(){
        alert('Saludos');
    }

    // boton.click(saludos);

    // boton.on('click',saludos);

    // boton.on('mouseenter',function(){
    //     $('body ').css({
    //         background: '#000'
    //     });
    // });

    // boton.on('mouseleave',function(){
    //     $('body').css({
    //         background:'#fff'
    //     });
    // });

    var desactivar = $('#desactivar');
    boton.on('click',function(){
        alert('Estoy activado');
        console.log('Estoy activado');
    });

    desactivar.on('click',function(){
        boton.off('click');
        console.log('Boton desactivado');
    });
});
