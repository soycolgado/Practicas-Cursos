(function(){

    function getEdad(){
        return 100+100+300;
    }

     const nombre = 'Fernando';
     const apellido = "Herrera";
     const edad = 33;

    //  const salida = `${nombre} ${apellido} (Edad: ${edad})`;
    const salida =  
`${nombre} 
${apellido} 
(${getEdad()})`;
     console.log(salida);
})();