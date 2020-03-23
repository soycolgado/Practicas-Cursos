import { Component } from '@angular/core';
import { DeseosService } from '../../services/deseos.service';
import { Router } from '@angular/router';
import { AlertController } from '@ionic/angular';
import { Lista } from '../../models/lista.model';




@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {

  constructor(public deseosService: DeseosService,
              private router: Router,
              private alertCtrl: AlertController) {}

  async agregarLista(){
    // this.router.navigate(['/tabs/tab1/agregar']);
    const alert = await this.alertCtrl.create({
      header: 'Nueva Lista',
      inputs:[
        {
          name: 'titulo',
          type: 'text',
          placeholder: 'Nueva Lista'
        }
      ],
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          handler: () => {
            console.log('Cancelar');
          }
        },
        {
          text: 'Crear',
          handler: (data) => {
            if(data.titulo.length === 0){
              return;
            }
            const listaId = this.deseosService.crearLista(data.titulo);
            this.router.navigate(['/tabs/tab1/agregar', listaId]);
          }
        }
      ]
    });

    await alert.present();
  }

  // listaSeleccionada(lista: Lista){
  //   console.log(lista);
  //   this.router.navigate(['/tabs/tab1/agregar',lista.id]);
  // }
}
