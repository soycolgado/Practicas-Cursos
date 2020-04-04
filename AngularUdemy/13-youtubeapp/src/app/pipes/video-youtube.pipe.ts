import { Pipe, PipeTransform } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';


@Pipe({
  name: 'videoYoutube'
})
export class VideoYoutubePipe implements PipeTransform {
  
  constructor(private domSanitazer: DomSanitizer){}

  transform(value: any): any {
    let url = 'https://www.youtube.com/embed/';

    return this.domSanitazer.bypassSecurityTrustResourceUrl(url+value);
  }

}
