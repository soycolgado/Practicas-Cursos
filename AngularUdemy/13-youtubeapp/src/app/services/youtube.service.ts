import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { map } from 'rxjs/operators';





@Injectable({
  providedIn: 'root'
})
export class YoutubeService {
  
  youtubeUrl: string = 'https://www.googleapis.com/youtube/v3';
  apiKey: string = 'AIzaSyDncxAq53JSw7hjUZjDgl3ZDAi6QMWrM2s';
  nextPageToken: string = '';

  constructor(public http: HttpClient) {

   }


  getVideos(){
    const url = `${this.youtubeUrl}/playlistItems`;
    let paramsObject = new HttpParams({
      fromObject:{
        part: 'snippet',
        maxResults: '10',
        playlistId: 'UUuaPTYj15JSkETGnEseaFFg',
        key: this.apiKey,
      }
    });

    if(this.nextPageToken){
      paramsObject = paramsObject.append('pageToken',this.nextPageToken);
    }
    
    console.log(paramsObject);
    return this.http.get(url, {params: paramsObject}).pipe(
      map((resp: any)=>{
        this.nextPageToken = resp.nextPageToken;
        console.log(this.nextPageToken);
        let videos: any[] = [];
        for(let video of resp.items){
          let snippet = video.snippet;
          videos.push(snippet);
        }

        return videos;
        
      })
    );
  }
}
