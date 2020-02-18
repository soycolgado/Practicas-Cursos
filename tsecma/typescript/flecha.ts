(function(){
    const miFuncion = function(a:string){
        return a;
    }

    const miFuncionF = (a:string)=>a.toUpperCase();

    console.log(miFuncionF('Flecha'));

    const sumarN = function(a:number,b:number){
        return a+b;
    }

    const sumarF = (a:number,b:number) => a+b;
    console.log(sumarF(15,5));
})();