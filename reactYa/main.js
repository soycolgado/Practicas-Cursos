// let persona1 = {
//     nombre: 'Nestor',
//     apellido: 'Bardel',
//     edad: 33,
//     imprimir: function(){
//         console.log(`Nombre: ${this.nombre}`);
//         console.log(`Edad: ${this.edad}`);
//     }
// };

// persona1.imprimir();
// let cronometro = document.getElementById('cronometro');
// let contador = 0;
// let iniciar = document.getElementById('iniciar');
// let parar = document.getElementById('parar');
// let reloj;
// iniciar.addEventListener('click',inicializar);
// parar.addEventListener('click',pararlo);
// function inicializar(){
//     reloj = setInterval(()=>{
//         cronometro.innerText = contador;
//         contador++;
//     },1000);
// }
// function pararlo(){
//     clearInterval(reloj);
// }

class Persona{
    constructor(nombre,edad){
        this.nombre = nombre;
        this.edad = edad;
    }

    imprimir(){
        document.write(`Nombre: ${this.nombre}<br>`);
        document.write(`Edad: ${this.edad}<br>`);
    }
}

class Empleado extends Persona{
    constructor(nombre,edad,empleo){
        super(nombre,edad);
        this.empleo = empleo;
    }

    imprimir(){
        super.imprimir();
        document.write(`Empleo: ${this.empleo}<br>`);
    }
}

let persona = new Persona('Nestor',33);
persona.imprimir();
let empleado = new Empleado('Nestor',33,'Desarrollador Web');
empleado.imprimir();

