"use strict";
// let avenger = {
//     nombre: "Steve",
//     clave:"Capitan America",
//     poder: "Droga"
// }
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
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
function consola(constructor) {
    console.log(constructor);
}
var Heroe = /** @class */ (function () {
    function Heroe(nombre) {
    }
    return Heroe;
}());
var Villano = /** @class */ (function () {
    function Villano(nombre) {
    }
    Villano = __decorate([
        consola
    ], Villano);
    return Villano;
}());
