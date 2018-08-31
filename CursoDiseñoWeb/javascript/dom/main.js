// var cajas = document.getElementsByTagName('div');
// cajas[0].textContent = "hola mundo";

// var cajas = document.getElementsByClassName('caja');

// cajas[0].innerHTML = '<h2>Con ClassName</h2>';

// var primeraCaja = document.getElementById('primeraCaja');
// primeraCaja.innerHTML = '<b>>';
// var cajas = document.getElementsByTagName('div');
//Crear Nodos
// var caja = document.createElement('div');
// var contenido = document.createTextNode('Hola mundo');
// caja.appendChild(contenido);
// caja.setAttribute('class','caja naranja');
// var contenedor = document.getElementById('contenedor');
// contenedor.appendChild(caja);
// caja.id = 'ultima';
// caja.className = 'caja naranja';

//Conociendo el elemento Padre
// var padre = cajas[0].parentNode;
// // padre.insertBefore(caja,primeraCaja);

// var cajas = document.getElementsByTagName('div');
// var caja = document.createElement('div');
// var contenido = document.createTextNode('Hola mundo');
// caja.appendChild(contenido);
// //Formas de darle la clase
// //primera forma
// //caja.setAttribute('class','caja naranja');
// caja.className = 'caja naranja';
// var padre = cajas[0].parentNode;
// // padre.insertBefore(caja,cajas[2]);
// // padre.appendChild(caja);
// //Como reemplazar
// padre.replaceChild(caja,cajas[2]);
// padre.removeChild(cajas[0]);
var cajas = document.getElementsByTagName('div');
cajas[0].className = 'caja naranja';
var caja = document.createElement('div');
var contenido = document.createTextNode('Hola Mundo JIJIJI');
caja.appendChild(contenido);
caja.className = 'caja naranja';
var padre = cajas[0].parentNode;
// padre.insertBefore(caja, cajas[0]);
padre.replaceChild(caja,cajas[0]);
padre.removeChild(cajas[cajas.length -1]);