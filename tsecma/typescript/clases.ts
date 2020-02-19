(()=>{
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
    
    class Avenger{
        // nombre:string;
        // equipo:string;
        // nombreReal:string;
        // puedePelear:boolean;
        // peleasGanadas:number;

        constructor(public nombre:string,
                    public equipo:string,
                    public nombreReal?:string,
                    public puedePelear:boolean = true,
                    public peleasGanadas:number = 0){
            
        }

        
    }

    const Antman:Avenger = new Avenger('AntMan','capi');
    console.log(Antman);
})();