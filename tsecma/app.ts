let nombre:string = "Ricardo Tapia";
let edad:number = 23;
const PERSONAJE = {
    nombre:nombre,
    edad:edad
}

interface HEROE{
    nombre:string;
    artesMarciales:string[];
}

let resultadoDoble = (a:number,b:number) => (a+b) * 2;

function getAvenger(nombre:string, poder?:string, arma:string="arco"){
    
}

class Rectangulo{
    base:number;
    altura:number;
    area:number;
    constructor(base:number,altura:number){
        this.base = base;
        this.altura = altura;
    }

    calcularArea():number{
     this.area = this.base * this.altura;
     return this.area;
    }
}