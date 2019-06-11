let miFuncion = (a:string) => a;

console.log(miFuncion('nestor'));

let miFuncion2 = (a:number, b:number) => a + b;

let miFuncion3 = (nombre:string) =>{
    nombre = nombre.toUpperCase();
    return nombre;
}

let Hulk = {
    nombre: "Bruce",
    smash(){
        setTimeout(() => {
         console.log(this.nombre + "Smash!!!!!!");   
        }, 1500);
    }
}

Hulk.smash();