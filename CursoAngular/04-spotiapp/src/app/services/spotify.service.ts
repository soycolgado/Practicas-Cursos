import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class SpotifyService {
  
  constructor(private http:HttpClient) {
    console.log("Servicio de Spotify Listo");
   }

   getNewReleases(){
    const headers = new HttpHeaders({
      'Authorization':'Bearer BQD1GaPcVlADAMsixnzcZAxKvO4lcsHpVrtdSEymG_CJ84_1bYiPYT6Nl1IzbLPBM8Onpaaj9TS5g_KIsxs'
    });
     this.http.get('https://api.spotify.com/v1/browse/new-releases',{headers})
     .subscribe(data=>{
       console.log(data);
     });
   }
}
