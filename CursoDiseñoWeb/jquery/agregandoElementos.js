$(document).ready(function () {
    var agregar = $('#agregar');
    var contenedor = $('#contenedor');
    var contador = 1;
    agregar.on('click',function(){
        var caja = $('<div></div>').attr('class','caja').text(contador);
        contador++;
        contenedor.append(caja);
    });
});