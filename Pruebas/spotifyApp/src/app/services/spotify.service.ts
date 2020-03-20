import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class SpotifyService {
  
  headers;

  constructor(private http: HttpClient) {
    console.log('Spotify Service Listo');
   }

   getToken(): any{
      
      const clientId = '93a2aa8e77f34d40bc024fa81f26abaf';
      const clientSecret = 'b24fe0520e7c4c22907a65d9b5bd9717';
      const url = `https://spotyserver.herokuapp.com/spotify/${clientId}/${clientSecret}`;
      
      const access = this.http.get(url).toPromise().then( (data: any) => data.access_token );
      console.log(access);
      return access;

   }

   async getQuery(query: string){

      const token: any = await this.getToken();
      const url: string = `https://api.spotify.com/v1/${ query }`;
      const headers = new HttpHeaders({
         'Authorization': `Bearer ${token}`
      });

      return this.http.get(`${url}`, {headers});
      

   }

   async getNewReleases(){
      
      const nuevasCanciones = await this.getQuery('browse/new-releases');
      return nuevasCanciones.pipe( map ((data: any) => data.albums.items) );
      
   }


   async getArtistas(termino: string){
      
      const artistas = await this.getQuery(`search?q=${termino}&type=artist&limit=15&offset=0`);
      return artistas.pipe( map(( data: any ) => data.artists.items ));

      // return this.getQuery(`search?q=${ termino }&type=artist&limit=15&offset=0`)
      //         .pipe( map( (data: any) => data.artists.items ) );

   }

   async getArtista(id: string){
      const artista  = await this.getQuery(`artists/${id}`);
      console.log('funcionando artista');
      return artista;

   }

   async getTopTrack(id: string){
      const topTrack = await this.getQuery(`artists/${id}/top-tracks?country=US`);
      return topTrack.pipe( map((data: any) => data.tracks ) );

      // return this.getQuery(`artists/${id}/top-tracks?country=US`)
      //       .pipe( map( (data: any) => data.tracks ));
        

   }
}
