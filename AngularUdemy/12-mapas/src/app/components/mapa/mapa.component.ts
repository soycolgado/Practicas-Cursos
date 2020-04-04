import { Component, OnInit } from '@angular/core';
import { Marcador } from '../../classes/marcador.class';
import {MatSnackBar} from '@angular/material/snack-bar';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import { MapaEditarComponent } from './mapa-editar.component';


@Component({
  selector: 'app-mapa',
  templateUrl: './mapa.component.html',
  styleUrls: ['./mapa.component.css']
})
export class MapaComponent implements OnInit {
  
  marcadores: Marcador[] = [];

  lat: number = 51.678418;
  lng: number = 7.809007;

  constructor(private snackBar: MatSnackBar, public dialog: MatDialog) { 
    if(localStorage.getItem('marcadores')){
      this.marcadores = JSON.parse(localStorage.getItem('marcadores'));
    }
  }

  ngOnInit() {
  }

  agregar(evento){
    const coords = evento.coords;

    let marcador = new Marcador(coords.lat, coords.lng);
    this.marcadores.push(marcador);
    this.guardarStorage();
    this.snackBar.open('Marcador Agregador', 'Cerrar', {duration: 3000});

  }

  guardarStorage(){
    localStorage.setItem('marcadores', JSON.stringify(this.marcadores));
  }

  borrarMarcador(i: number){
    this.marcadores.splice(i, 1);
    this.guardarStorage();
    this.snackBar.open('Marcador Borrado', 'Cerrar', {duration: 3000});

  }

  editarMarcador(marcador: Marcador){
    const dialogRef = this.dialog.open(MapaEditarComponent, {
      width: '250px',
      data: {titulo: marcador.titulo, desc: marcador.desc}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      console.log(result);
      if(!result){
        return;
      }

      marcador.titulo = result.titulo;
      marcador.desc = result.desc;
      this.guardarStorage();
      this.snackBar.open('Marcador Actualizado', 'Cerrar', {duration: 3000});

    });

  }

}
