import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  nombre = 'Nestor Bardel';
  edad = 40;
  email = 'nestorbardel@hotmail.com';
  sueldos = [1000,2000,900];
  activo = true;

  esActivo(){
    if(this.activo){
      return 'Trabajador Activo';
    }else{
      return 'Trabajador Inactivo';
    }
  }

  ultimos3Sueldos(){
    let suma = 0;
    for(let elementos of this.sueldos){
      suma+=elementos;
    }
    return suma;
  }
}
