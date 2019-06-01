import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-selectornumerico',
  templateUrl: './selectornumerico.component.html',
  styleUrls: ['./selectornumerico.component.css']
})
export class SelectornumericoComponent implements OnInit {
  @Input() minimo: number;
  @Input() maximo: number;
  actual: number;
  constructor() { }

  ngOnInit() {
    this.actual = this.minimo;
  }

  incrementar(){
    if(this.actual < this.maximo){
      this.actual++;
    }
  }

  decrementar(){
    if(this.actual > this.minimo){
      this.actual--;
    }
  }

  fijar(e:number){
    if(e >= this.minimo && e <= this.maximo){
      this.actual = e;
    }
  }

}
