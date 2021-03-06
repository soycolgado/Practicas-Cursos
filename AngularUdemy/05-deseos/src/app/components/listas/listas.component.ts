import { Component, OnInit, Input, ViewChild } from '@angular/core';
import { DeseosService } from '../../services/deseos.service';
import { Router } from '@angular/router';
import { Lista } from '../../models/lista.model';
import { AlertController, IonList } from '@ionic/angular';


@Component({
  selector: 'app-listas',
  templateUrl: './listas.component.html',
  styleUrls: ['./listas.component.scss'],
})
export class ListasComponent implements OnInit {
  @ViewChild(IonList, {static: true}) lista: IonList;
  @Input() terminada = true;
  constructor(public deseosService: DeseosService, private router: Router, private alertCtrl: AlertController) { }

  ngOnInit() {}
  
  listaSeleccionada(lista: Lista){
    console.log(lista);
    if (this.terminada){
      this.router.navigate(['/tabs/tab2/agregar',lista.id]);
    }else{
      this.router.navigate(['/tabs/tab1/agregar',lista.id]);

    }
  }

  borrarLista(lista: Lista){
    this.deseosService.borrarLista(lista);
  }

   async cambiarTitulo(lista: Lista){
      const alert = await this.alertCtrl.create({
        header: 'Cambiar Titulo',
        inputs: [
          {
            name: 'titulo',
            type: 'text',
            value: lista.titulo
          }
        ],
        buttons: [
          {
            text: 'Cancelar',
            role: 'cancel',
            handler: () => {
              this.lista.closeSlidingItems();
            }
          }, {
            text: 'Modificar',
            handler: (data) => {
              if(data.titulo.length === 0){
                return;
              }
                lista.titulo = data.titulo;
                this.deseosService.guardarStorage();
                this.lista.closeSlidingItems();
            }
          }
        ]
      });
  
      await alert.present();
  }
}
