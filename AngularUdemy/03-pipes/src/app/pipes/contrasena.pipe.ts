import { Pipe, PipeTransform } from '@angular/core';


@Pipe({
  name: 'contrasena'
})
export class ContrasenaPipe implements PipeTransform {

  transform(value: string, activado: boolean = true): string {
    let valor: string = "";
    if(activado){
      for(let f = 0; f < value.length; f++){
        if(value[f] != " "){
          valor += "*";
        }else{
          valor += " ";
        }
      }  
      console.log(valor);
    }else{
      valor = value;
    }

    return valor;
  }

}
