(()=>{
    const sumar = (a:number,b:number): number =>{
        return a + b;
    }

    const nombre = ():string => 'Hola Fernando';

    const obtenerSalario = ():Promise<string> =>{
        return new Promise((resolve,reject)=>{
            resolve("Nestor Bardel");
        });
    }

    obtenerSalario().then(a => console.log(a.toUpperCase));
    

})();