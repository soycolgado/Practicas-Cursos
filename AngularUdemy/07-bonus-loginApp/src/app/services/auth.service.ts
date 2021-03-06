import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { UsuarioModel } from '../models/usuario.model';
import { map } from 'rxjs/operators';



@Injectable({
  providedIn: 'root'
})
export class AuthService {
  
  private url: string = 'https://identitytoolkit.googleapis.com/v1/accounts:';
  private apiKey: string = 'AIzaSyAz4IOTsYPhvAB_x_j_MzvlJE-K4n16DVM';
  userToken: string;

  // CREAR NUEVO USUARIO
  // https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[API_KEY]

  // LOGIN
  // https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=[API_KEY]


  constructor(private http: HttpClient) {
    this.leerToken();
   }

  logout(){
    localStorage.removeItem('token');
  }

  login(usuario: UsuarioModel){
    const authData = {
      email: usuario.email,
      password: usuario.password,
      returnSecureToken: true
    }
    
    return this.http
          .post(`${this.url}signInWithPassword?key=${this.apiKey}`, authData)
          .pipe(map ( (resp) => {
            this.guardarToken(resp['idToken']);
            return resp;
          }));

  }

  nuevoUsuario(usuario: UsuarioModel){
    const authData = {
      email: usuario.email,
      password: usuario.password,
      returnSecureToken: true
    }

    return this.http
          .post(`${this.url}signUp?key=${this.apiKey}`, authData)
          .pipe(map( (resp) =>{
            this.guardarToken(resp['idToken']);
            return resp;
          } ));

  }

  private guardarToken(idToken: string){
    this.userToken = idToken;
    localStorage.setItem('token',idToken);
    
    let hoy: Date = new Date();
    hoy.setSeconds(3600);
    
    localStorage.setItem('expira', hoy.getTime().toString());
  }

  leerToken(){
    if(localStorage.getItem('token')){
      this.userToken = localStorage.getItem('token');
    }else{
      this.userToken = '';
    }

    return this.userToken;
  }

  estaAutenticado(): boolean{
    if(this.userToken.length < 2){
      return false;
    }

    const expira = Number(localStorage.getItem('expira'));
    console.log('expira: '+expira);
    let expiraDate = new Date();
    expiraDate.setTime(expira);
    console.log('expiraDate: '+expiraDate);
    let ahora = new Date();
    
    if(expiraDate > ahora) {
      return true;
    }else{
      return false;
    }

  }
}
