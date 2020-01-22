import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  art = {
    codigo: null,
    descripcion: null,
    precio: null
  }

  articulos = [
    {
     codigo:1,
     descripcion:'papas',
     precio:10.55 
    },
    {
      codigo:2,
      descripcion:'manzanas',
      precio:12.10
    },
    {
      codigo:3,
      descripcion:'melon',
      precio:52.30
    },
    {
      codigo:4,
      descripcion:'cebollas',
      precio:17
    },
    {
      codigo:5,
      descripcion:'calabaza',
      precio:20
    }
  ];

  hayRegistros(){
    return this.articulos.length > 0;
  }

  borrar(art){
    for(let f = 0; f < this.articulos.length; f++){
      if(this.articulos[f].codigo == art.codigo){
        this.articulos.splice(f,1);
        return;
      }
    }
  }

  agregar(){
    for(let f = 0; f < this.articulos.length; f++){
      if(this.art.codigo == this.articulos[f].codigo){
        alert('El codigo que ingreso ya existe');
        return;
      }
      this.articulos.push({
        codigo: this.art.codigo,
        descripcion: this.art.descripcion,
        precio: this.art.precio
      });
      this.art.codigo = null;
      this.art.descripcion = null;
      this.art.precio = null;

    }
  }

  seleccionar(art){
    this.art.codigo = art.codigo;
    this.art.descripcion = art.descripcion;
    this.art.precio = art.precio;
  }

  modificar(){
    for(let f = 0; f < this.articulos.length; f++){
      if(this.art.codigo == this.articulos[f].codigo){
        this.articulos[f].descripcion = this.art.descripcion;
        this.articulos[f] = this.art.precio;
        return;
      }else{
        alert('No existe ningun articulo con ese codigo');
      }
    }
  }

}
