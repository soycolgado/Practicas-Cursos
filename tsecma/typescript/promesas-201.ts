(()=>{
    const retirarDinero = (montoRetirar:number):Promise<number>=>{
        let dineroActual = 1000;
        return new Promise((resolve,reject)=>{
            if(montoRetirar > dineroActual){
                reject(`Fondos insuficientes`);
            }else{
                dineroActual -= montoRetirar;
                resolve(dineroActual);
            }
        });
    }

    retirarDinero(500)
    .then(montoActual => console.log(`El total de fondos es ${montoActual}`))
    .catch(err => console.log(err));

})();