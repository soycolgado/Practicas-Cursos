import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  valor1 : number;
  valor2: number;
  valor3: number;
  resultado: string;
  constructor() {
    this.valor1 = this.retornarValor();
    this.valor2 = this.retornarValor();
    this.valor3 = this.retornarValor();
  }

  retornarValor(){
    return Math.trunc((Math.random()*6) +1);
  }

  tirar(){
    this.valor1 = this.retornarValor();
    this.valor2 = this.retornarValor();
    this.valor3 = this.retornarValor();
    if(this.valor1 == this.valor2 && this.valor1 == this.valor3){
      this.resultado = "Gano!!!!!!";
    }else{
      this.resultado = "Intentelo de nuevo!!!!";
    }
  }
  
}
