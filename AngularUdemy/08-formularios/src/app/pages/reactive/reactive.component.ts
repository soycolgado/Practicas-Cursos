import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';




@Component({
  selector: 'app-reactive',
  templateUrl: './reactive.component.html',
  styleUrls: ['./reactive.component.css']
})
export class ReactiveComponent implements OnInit {
  
  forma: FormGroup;
  
  constructor(private fb: FormBuilder) {
    this.crearFormulario();
    this.cargarDataAlFormulario();
  }

  ngOnInit(): void {
  }

  get nombreNoValido(){
    if(this.forma.get('nombre').invalid && this.forma.get('nombre').touched){
      return true;
    }else{
      return false;
    }
  }
  get apellidoNoValido(){
    if(this.forma.get('apellido').invalid && this.forma.get('apellido').touched){
      return true;
    }else{
      return false;
    }
  }
  get correoNoValido(){
    if(this.forma.get('correo').invalid && this.forma.get('correo').touched){
      return true;
    }else{
      return false;
    }
  }

  get distritoNoValido(){
    if(this.forma.get('direccion.distrito').invalid && this.forma.get('direccion.distrito').touched){
      return true;
    }else{
      return false;
    }
  }

  get ciudadNoValido(){
    if(this.forma.get('direccion.ciudad').invalid && this.forma.get('direccion.ciudad').touched){
      return true;
    }else{
      return false;
    }
  }

  crearFormulario(){
    this.forma = this.fb.group({
      nombre   :   ['',[Validators.required, Validators.minLength(5)]],
      apellido : ['', [Validators.required, Validators.minLength(5)]],
      correo   :   ['', [Validators.required, Validators.pattern('[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$')]],
      direccion: this.fb.group({
        distrito  :['', [Validators.required, Validators.minLength(5)]],
        ciudad   : ['',[Validators.required, Validators.minLength(5)]] 
      })
    });
  }

  cargarDataAlFormulario(){
    this.forma.reset({
      nombre: 'Nestor',
      apellido: 'Bardel',
      correo: 'nestorbardel@gmail.com',
      direccion: {
        distrito: 'Buenos Aires',
        ciudad: 'Tandil'
      }
    });
  }

  guardar(){
    console.log(this.forma);
    if(this.forma.invalid){
      return Object.values(this.forma.controls).forEach(control => {
        control.markAsTouched();
        if(control instanceof FormGroup){
          Object.values(control.controls).forEach(control => control.markAsTouched());
        }
        console.log(control);
      });
    }
    this.forma.reset();
  }

  

}
