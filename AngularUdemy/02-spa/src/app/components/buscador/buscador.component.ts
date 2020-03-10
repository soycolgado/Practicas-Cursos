import { Component, OnInit } from '@angular/core';
import { HeroesService, Heroe } from '../../servicios/heroes.service';
import { ActivatedRoute } from '@angular/router';



@Component({
  selector: 'app-buscador',
  templateUrl: './buscador.component.html',
  styleUrls: ['./buscador.component.css']
})
export class BuscadorComponent implements OnInit {
  heroes: Heroe[];
  constructor(private activatedRoute: ActivatedRoute,  private heroesService: HeroesService) { }

  ngOnInit(): void {
    this.activatedRoute.params.subscribe(params=>{
      this.heroes = this.heroesService.buscarHeroes(params['termino']);
      console.log(this.heroes);
    });
  }

}
