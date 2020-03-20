import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';





@Injectable({
  providedIn: 'root'
})
export class SpotifyService {
  
  
  constructor(private http: HttpClient) {
    console.log('Spotify Service Listo');
   }

   getQuery(query: string){
      const headers = new HttpHeaders({
        'Authorization': 'Bearer BQBL5oV9QKLKqe7Csn6SsC5FRxoCMTFWOFZZM667xlUkKF-A3db5Fd1uAIdsoaKbeM0fNwe_Wk4y0Z25Q-s' 
      });

      const url: string = `https://api.spotify.com/v1/${ query }`;

      return this.http.get(url, {headers});
   }

   getNewReleases(){
    
    return this.getQuery('browse/new-releases')
            .pipe( map ( (data: any) => data.albums.items ) );
    //  return this.http.get('https://api.spotify.com/v1/browse/new-releases', { headers })
    //          .pipe(map ( (data: any) => data.albums.items ));
   }

   getArtistas(termino: string){
    
      return this.getQuery(`search?q=${ termino }&type=artist&limit=15&offset=0`)
              .pipe( map( (data: any) => data.artists.items ) );

   }

   getArtista(id: string){
      
      return this.getQuery(`artists/${id}`);

   }

   getTopTrack(id: string){
      
      return this.getQuery(`artists/${id}/top-tracks?country=US`)
            .pipe( map( (data: any) => data.tracks ));
        

   }
}
