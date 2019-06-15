import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'contrasena'
})
export class ContrasenaPipe implements PipeTransform {

  transform(value:string, activado:boolean = true): string {
    let nombre = value
    if(activado == true){

      nombre = "";
      for(let i = 0; i < value.length; i++){
        nombre+="*";
      }
    }
    
    return nombre;
  }

}
