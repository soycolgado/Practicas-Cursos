$(document).ready(function(){
    // $('#titulo').text('Nuevo titulo');
    var nombre = $('#nombre');
    nombre.on('change',function(){
        $('#titulo').text(nombre.val());
    });

    // $('#enlace').attr('href','http://www.yahoo.com');
    $('#enlace').attr({
        'class':'azul',
        'href':'http://www.yahoo.com',
        'target':'_blank'
    });
});