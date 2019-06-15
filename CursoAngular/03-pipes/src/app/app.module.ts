import { BrowserModule } from '@angular/platform-browser';
import { LOCALE_ID } from "@angular/core";
import { NgModule } from '@angular/core';
import { CapitalizadoPipe } from "./pipes/capitalizado.pipe";

import { AppComponent } from './app.component';

import  localesEs  from "@angular/common/locales/es";
import { registerLocaleData } from "@angular/common";
import { DomseguroPipe } from './pipes/domseguro.pipe';
import { ContrasenaPipe } from './pipes/contrasena.pipe';
registerLocaleData(localesEs);

@NgModule({
  declarations: [
    AppComponent,
    CapitalizadoPipe,
    DomseguroPipe,
    ContrasenaPipe
  ],
  imports: [
    BrowserModule,
    
  ],
  providers: [{provide: LOCALE_ID, useValue: 'es'}],
  bootstrap: [AppComponent]
})
export class AppModule { }
