// let avenger = {
//     nombre: "Steve",
//     clave:"Capitan America",
//     poder: "Droga"
// }

// let {nombre, clave, poder} = avenger;

// let avengers:string[] = ['Thor','Steve','Tony'];

// let[loki,capi,ironMan] = avengers;

// console.log(`${loki}
// ${capi}
// ${ironMan}`);
//-------------------------------------------------

// PROMISE  
// let prom1 = new Promise(function(resolve, reject) {
//     setTimeout(() => {
//         console.log('Promesa terminada');
//         //termina bien
//         // resolve();

//         // termina mal
//         reject();

//     }, 1500);
// });

// prom1.then(function(){
//     console.log("Ejecutar si termina bien");
// }, function(){
//     console.log("Ejecutar si termina mal");
// })
//-----------------------------------------------

//INTERFACES
// interface Xmen{
//     nombre:string,
//     poder:string
// }

// function enviarMision(xmen: Xmen){
//     console.log("Se ha enviado a la mision: " + xmen.nombre);
// }

// let wolverine:Xmen = { 
//     nombre: "Logan",
//     poder: "Sanacion"
// }

// enviarMision(wolverine);

//CLASES
// class Avenger{
//     nombre:string = "AntMan";
//     equipo:string = undefined;
//     nombreReal:string = undefined;
//     puedePelear:boolean = false;
//     peleasGanadas:number = 0;

//     constructor (nombre:string, equipo:string,nombreReal:string){
//         this.nombre = nombre;
//         this.equipo = equipo;
//         this.nombreReal = nombreReal;
//     }
// }

// let antMan:Avenger = new Avenger("Wolverine","IronMan","Logan");

// console.log(antMan);
//-----------------------------------------------------------------------

//DECORADORES
function consola(constructor:Function){
    console.log(constructor);
}



class Heroe{
    nombre:string;
    constructor(nombre:string){

    }
}
@consola
class Villano{
    public nombre:string;
    constructor(nombre:string){

    }
}