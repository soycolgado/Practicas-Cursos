import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class SpotifyService {
  
  constructor(private http:HttpClient) {
    console.log("Servicio de Spotify Listo");
   }

   getQuery(query:string){
    const url:string = `https://api.spotify.com/v1/${query}`;
    const headers = new HttpHeaders({
      'Authorization':'Bearer BQA9u_LcgJzwH6htmLtQOqXtrrz3Pi55WJips5x5eMccNdgsW0t5HI5lirwKNiGg5VtYM8L5vCWN4ByFaGU'
    });

    return this.http.get(url,{headers});
    
   }

   getNewReleases(){
    
    return this.getQuery('browse/new-releases').pipe(map(data=>data['albums'].items));

     
   }

   getArtista(termino:string){
      return this.getQuery(`search?q=${termino}&type=artist&limit=15`).pipe(map(data=>data['artists'].items));

     
   }
}
