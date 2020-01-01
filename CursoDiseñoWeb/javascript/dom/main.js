var cajas = document.getElementsByTagName('div');
// cajas[0].textContent = "Hola Mundo";
// cajas[0].innerHTML = "<h1>Hola</h1>";

// var cajas = document.getElementsByClassName('caja');
var primeraCaja = document.getElementById('primeraCaja');
// primeraCaja.innerHTML = "<u>Hola mundo</u>";
// Creando Nodos

var caja = document.createElement('div');
var contenido = document.createTextNode('Hola mundo');
caja.appendChild(contenido);
caja.setAttribute('class','caja naranja');

var contenedor = document.getElementById('contenedor');
contenedor.appendChild(caja);

// Modificando la clase o id de un elemento 

caja.id = "primera";
caja.className = "caja naranja";

// Conociendo el elemento Padre

var padre = cajas[0].parentNode;
// padre.insertBefore(caja, primeraCaja);
padre.replaceChild(caja,cajas[3]);

padre.removeChild(cajas[3]);


