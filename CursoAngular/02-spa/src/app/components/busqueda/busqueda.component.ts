import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from "@angular/router";
import { HeroesService, Heroes } from '../../servicios/heroes.service';


@Component({
  selector: 'app-busqueda',
  templateUrl: './busqueda.component.html',
  styleUrls: []
})
export class BusquedaComponent implements OnInit {
  
  heroes:Heroes[] = [];
  termino:string;
  
  constructor(private activatedRoute:ActivatedRoute, private _heroesService:HeroesService) { }

  ngOnInit() {
    this.activatedRoute.params.subscribe(params =>{
      this.termino = params['termino'];
      this.heroes = this._heroesService.buscarHeroe(params['termino']);
      console.log(this.heroes);
    });
    
  }

}
