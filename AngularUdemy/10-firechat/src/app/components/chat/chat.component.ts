import { Component, OnInit } from '@angular/core';
import { ChatService } from '../../provides/chat.service';


@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit {

  mensaje: string = "";
  mensajeDisable: boolean = false;
  elemento: any;
  mensajeInput: any;

  constructor(private _cs: ChatService) {
    this._cs.cargarMensajes().subscribe(()=> {
      setTimeout(()=>{
        this.elemento.scrollTop = this.elemento.scrollHeight;
        
      },20);
    });
  }

  ngOnInit() {
    this.elemento = document.getElementById('app-mensajes');
    this.mensajeInput = document.getElementById('mensajeInput');
  }

  enviar_mensaje(){
    this.mensajeDisable = true;
    console.log(this.mensaje);
    if(this.mensaje.length === 0){
      return;
    }

    this._cs.guardarMensaje(this.mensaje)
          .then(() => {
            console.log('Mensaje Enviado');
            this.mensaje = "";
            this.mensajeDisable = false;
            setTimeout(()=>{
              this.mensajeInput.focus();
            },30)
          })
          .catch((err) => console.log('Error: '+ err));
    ;
  }

}
