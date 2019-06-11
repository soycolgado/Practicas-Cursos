import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  contador:number = 1;
  incrementar(){
    this.contador++;
  }

  decrementar(){
    this.contador--;
  }

}
