import { Component, OnInit } from '@angular/core';
import { YoutubeService } from '../../services/youtube.service';

declare var $;

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styles: []
})
export class HomeComponent implements OnInit {
  videos: any[]=[];
  videoSel: any;
  constructor(private _ys: YoutubeService) { }

  ngOnInit() {
    this._ys.getVideos().subscribe(videos => {
      console.log(videos);
      this.videos = videos;
    });
  }

  verVideo(video){
    this.videoSel = video;
    $('#myModal').modal();
  }

  cerrarModal(){
    this.videoSel = null;
    $('#myModal').modal('hide');
  }

  cargarMasVideos(){
    this._ys.getVideos().subscribe(videos => {
      console.log(videos);
      this.videos = videos;
    });
  }

}
