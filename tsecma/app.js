"use strict";
(() => {
    // class Avenger{
    //     nombre:string;
    //     equipo:string;
    //     nombreReal:string;
    //     puedePelear:boolean;
    //     peleasGanadas:number;
    //     constructor(nombre:string,equipo:string){
    //         this.nombre = nombre;
    //         this.equipo = equipo;
    //     }
    // }
    class Avenger {
        // nombre:string;
        // equipo:string;
        // nombreReal:string;
        // puedePelear:boolean;
        // peleasGanadas:number;
        constructor(nombre, equipo, nombreReal, puedePelear = true, peleasGanadas = 0) {
            this.nombre = nombre;
            this.equipo = equipo;
            this.nombreReal = nombreReal;
            this.puedePelear = puedePelear;
            this.peleasGanadas = peleasGanadas;
        }
    }
    const Antman = new Avenger('AntMan', 'capi');
    console.log(Antman);
})();
