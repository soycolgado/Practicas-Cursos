$(document).ready(function(){
    var contenedor = $('#contenedor');
    $('#eliminar').on('click',function(){
        contenedor.children('#segunda').prev().remove();
    });
});