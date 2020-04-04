import { Injectable } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { Observable } from 'rxjs';
import { rejects } from 'assert';

interface ErrorValidate {
  [s: string]: boolean;
}

@Injectable({
  providedIn: 'root'
})
export class ValidadoresService {

  constructor() { }

  existeUsuario(control: FormControl):Promise<ErrorValidate> | Observable<ErrorValidate>{

    if(!control.value){
      return Promise.resolve(null);
    }

    return new Promise((resolve, reject) => {
      setTimeout(()=>{
        if(control.value === 'strider'){
          resolve({existe: true});
        }else{
          resolve(null);
        }
      },3500);
    });
  
  }

  noHerrera(control: FormControl):ErrorValidate{
    if(control.value?.toLowerCase() === 'herrera'){
      return {
        noHerrera: true
      }
    }
    return null;
  }

  passwordsIguales(pass1Name: string, pass2Name: string){
    
    return (formGroup: FormGroup) => {
      const pass1Control = formGroup.get(pass1Name);
      const pass2Control = formGroup.get(pass2Name);
      
      if(pass1Control.value === pass2Control.value){
        pass2Control.setErrors(null);
      }else{
        pass2Control.setErrors({noEsIgual: true});
      }

    }

  }

  
}
