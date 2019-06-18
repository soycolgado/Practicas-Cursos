import { Component, OnInit } from '@angular/core';
import { SpotifyService } from '../../services/spotify.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styles: []
})
export class HomeComponent implements OnInit {
   nuevasCanciones:any[] = [];
  
  constructor(private spotify:SpotifyService) { 
    this.spotify.getNewReleases().subscribe((data:any) =>{
      console.log(data);
      this.nuevasCanciones = data;
    });
  }

  ngOnInit(): void {
    //Called after the constructor, initializing input properties, and the first call to ngOnChanges.
    //Add 'implements OnInit' to the class.
    
  }

}
