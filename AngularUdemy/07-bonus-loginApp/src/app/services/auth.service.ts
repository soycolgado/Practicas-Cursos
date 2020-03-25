import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { UsuarioModel } from '../models/usuario.model';


@Injectable({
  providedIn: 'root'
})
export class AuthService {
  
  private url: string = 'https://identitytoolkit.googleapis.com/v1/accounts:';
  private apiKey: string = 'AIzaSyAz4IOTsYPhvAB_x_j_MzvlJE-K4n16DVM';

  // CREAR NUEVO USUARIO
  // https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[API_KEY]

  // LOGIN
  // https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=[API_KEY]


  constructor(private http: HttpClient) { }

  logout(){

  }

  login(usuario: UsuarioModel){

  }

  nuevoUsuario(usuario: UsuarioModel){
    const authData = {
      email: usuario.email,
      password: usuario.password,
      returnSecureToken: true
    }

    return this.http.post(`${this.url}signUp?key=${this.apiKey}`, authData);

  }
}
