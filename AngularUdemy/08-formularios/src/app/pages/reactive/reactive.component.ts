import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormArray } from '@angular/forms';
import { ValidadoresService } from 'src/app/services/validadores.service';




@Component({
  selector: 'app-reactive',
  templateUrl: './reactive.component.html',
  styleUrls: ['./reactive.component.css']
})
export class ReactiveComponent implements OnInit {
  
  forma: FormGroup;
  
  constructor(private fb: FormBuilder, private validador: ValidadoresService) {
    this.crearFormulario();
    this.cargarDataAlFormulario();
    this.crearListeners();
  }

  ngOnInit(): void {
  }

  get pasatiempos(){
    return this.forma.get('pasatiempos') as FormArray;
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

  get usuarioNoValido(){
    return this.forma.get('usuario').invalid && this.forma.get('usuario').touched;
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

  get pass1NoValido(){
    return this.forma.get('pass1').invalid && this.forma.get('pass1').touched;
  }

  get pass2NoValido(){
    const pass1 = this.forma.get('pass1').value;
    const pass2 = this.forma.get('pass2').value;

    return (pass1 === pass2) ? false : true;

  }

  crearFormulario(){
    this.forma = this.fb.group({
      nombre   :   ['',[Validators.required, Validators.minLength(5)]],
      apellido : ['', [Validators.required, Validators.minLength(5), this.validador.noHerrera]],
      correo   :   ['', [Validators.required, Validators.pattern('[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$')]],
      usuario: ['',,this.validador.existeUsuario],
      pass1: ['', Validators.required],
      pass2: ['', Validators.required],
      direccion: this.fb.group({
        distrito  :['', [Validators.required, Validators.minLength(5)]],
        ciudad   : ['',[Validators.required, Validators.minLength(5)]] 
      }),
      pasatiempos: this.fb.array([])
    },{
      validators: this.validador.passwordsIguales('pass1','pass2')
    });
  }

  crearListeners(){
    // this.forma.valueChanges.subscribe(valor => {
    //   console.log(valor);
    // });

    this.forma.statusChanges.subscribe(status => {
      console.log(status);
    });
  }

  cargarDataAlFormulario(){
    this.forma.reset({
      nombre: 'Nestor',
      apellido: 'Bardel',
      correo: 'nestorbardel@gmail.com',
      pass1: '123',
      pass2: '123',
      direccion: {
        distrito: 'Buenos Aires',
        ciudad: 'Tandil'
      }
    });
  }

  agregarPasatiempo(){
    this.pasatiempos.push(this.fb.control('Hola'));
  }

  borrarPasatiempo(idx: any){
    this.pasatiempos.removeAt(idx);
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
