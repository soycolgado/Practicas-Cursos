(()=>{
    
    const avenger = {
        nombre:'Steve',
        clave:'Capitan America',
        poder:'Droga'
    }

    const extraer = ({nombre, poder}:any)=>{
        console.log(nombre);
        console.log(poder);
    }

    // extraer(avenger);

    const avengers:string[] = ['Thor','IronMan','SpiderMan'];
    
    // const [,,arana] = avengers;
    // console.log(loki);
    // console.log(hombre);
    // console.log(arana);
    
    const extraerArr = ([,,spider]:string[]) =>{
        console.log(spider);
    }

    extraerArr(avengers);

})();