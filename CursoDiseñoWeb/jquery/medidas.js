$(document).ready(function () {
    var titulo = $('#titulo');
    var info = $('#info');

    info.append('Ancho: '+titulo.width()+'<br>');
    info.append('Ancho: '+titulo.innerWidth()+'<br>');
    info.append('Ancho: '+titulo.outerWidth()+'<br>');
    info.append('Ancho con margin: '+titulo.outerWidth(true)+'<br>');
    info.append('Alto: '+titulo.height()+'<br>');
    info.append('Alto: '+titulo.innerHeight()+'<br>');
    info.append('Alto: '+titulo.outerHeight()+'<br>');
    info.append('Alto: '+titulo.outerHeight(true)+'<br>');
});