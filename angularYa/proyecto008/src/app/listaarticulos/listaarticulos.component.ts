import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-listaarticulos',
  templateUrl: './listaarticulos.component.html',
  styleUrls: ['./listaarticulos.component.css']
})
export class ListaarticulosComponent implements OnInit {
  @Input() datos;
  constructor() { }

  ngOnInit() {
  }

}
