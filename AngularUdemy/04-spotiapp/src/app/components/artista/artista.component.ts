import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { SpotifyService } from '../../services/spotify.service';




@Component({
  selector: 'app-artista',
  templateUrl: './artista.component.html',
  styleUrls: ['./artista.component.css']
})
export class ArtistaComponent implements OnInit {
  artista: any = {};
  topTrack: any[] = [];
  loading: boolean = true;

  constructor(private spotify: SpotifyService, private activatedRoute: ActivatedRoute) { 
    this.activatedRoute.params.subscribe( params => {
      // console.log(params['id']);
      this.getArtista(params['id']);
      this.getTopTrack(params['id']);
    } );
  }

  getArtista(id: string){
    this.spotify.getArtista(id).subscribe(( artista: any ) => {
      console.log(artista);
      this.artista = artista;
      this.loading = false;
    });
  }

  getTopTrack(id: string){
    this.spotify.getTopTrack(id).subscribe((data: any) => {
      console.log(data);
      this.topTrack = data;
    });
  }

  ngOnInit(): void {
  }

}
