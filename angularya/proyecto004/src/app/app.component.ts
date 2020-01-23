import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  valor1: number;
  valor2: number;
  valor3: number;
  resultado:string;
  
  constructor(){
    this.valor1 = this.retornarRandom();
    this.valor2 = this.retornarRandom();
    this.valor3 = this.retornarRandom();
  }

  tirar(){
    this.valor1 = this.retornarRandom();
    this.valor2 = this.retornarRandom();
    this.valor3 = this.retornarRandom();
    if(this.valor1 == this.valor2 && this.valor1 == this.valor3){
      this.resultado = "Has Ganado!!!!!";
    }else{
      this.resultado = "Has Perdido :(";
    }
  }

  retornarRandom(){
    let numero = Math.trunc(Math.random()*6) + 1;
    return numero;
  }
}
