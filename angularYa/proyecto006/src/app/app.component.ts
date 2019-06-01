import { Component, ViewChild } from '@angular/core';
import { SelectornumericoComponent } from './selectornumerico/selectornumerico.component';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  @ViewChild('selector1') selector1: SelectornumericoComponent;

  fijarSelector(valor:number){
    this.selector1.fijar(valor);
  }
}
