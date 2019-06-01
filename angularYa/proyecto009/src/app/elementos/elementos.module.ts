import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DadosComponent } from './dados/dados.component';

@NgModule({
  exports: [DadosComponent],
  declarations: [DadosComponent],
  imports: [
    CommonModule
  ]
})
export class ElementosModule { }
