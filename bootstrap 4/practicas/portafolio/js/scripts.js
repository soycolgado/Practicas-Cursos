$(function(){
    $('.galeria .contenedor-imagen').on('click',function(){
        $('#modal').modal();
        let direccion = $(this).find('img').attr('src');
        $('#imagen-modal').attr('src',direccion);
    });

    $('#modal').on('click',function(){
        $('#modal').modal('hide');
    });
});