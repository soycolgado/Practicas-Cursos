import { Component, OnInit } from '@angular/core';
import { HeroesService, Heroe } from '../../servicios/heroes.service';
import { Router, ActivatedRoute } from '@angular/router';




@Component({
  selector: 'app-buscador',
  templateUrl: './buscador.component.html',
  styleUrls: ['./buscador.component.css']
})
export class BuscadorComponent implements OnInit {
  heroes: Heroe[];
  termino:string = '';
  constructor(private activatedRoute: ActivatedRoute,  private heroesService: HeroesService, private router: Router) { }

  ngOnInit(): void {
    // this.activatedRoute.params.subscribe(params=>{
    //   this.heroes = this.heroesService.buscarHeroes(params['termino']);
    //   console.log(this.heroes);
    // });
    this.activatedRoute.params.subscribe(params=>{
      this.heroes = this.heroesService.buscarHeroes(params['termino']);
      this.termino = params['termino'];
    });
  }

  

}
