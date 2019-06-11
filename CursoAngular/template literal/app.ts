let nombre:string = "Nombre";
let apellido:string = "Bardel";
let edad:number = 32;

let saludo:string = `Hola ${nombre} ${apellido} (${edad})`;
console.log(saludo);

function getNombre(){
    return "Nestor";
}

console.log(`${getNombre()}`);