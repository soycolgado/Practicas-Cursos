var cajas = document.getElementsByTagName('div');

var caja = document.createElement('div');
var contenido = document.createTextNode('Hola soy la nueva');
caja.appendChild(contenido);
caja.className = 'caja naranja';
caja.id = 'primeraCaja';

var padre = cajas[0].parentNode;
// padre.insertBefore(caja, cajas[2]);
padre.replaceChild(caja,cajas[1]);
padre.removeChild(cajas[3]);