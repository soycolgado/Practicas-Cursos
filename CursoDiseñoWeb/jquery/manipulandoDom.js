$(document).ready(function () {
    // $('#titulo').text('Encabezado modificado');
    // $('#titulo').html('<u>Contenido modificado</u>');
    var nombre = $('#nombre');
    nombre.on('change',function(){
        $('#titulo').text(nombre.val());
    });

    var enlace = $('#enlace');
    // enlace.attr('href','http://www.facebook.com');
    enlace.attr({
        'class':'azul',
        'href':'http://www.yahoo.com'
    });
});