import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TarjetaPeliculaComponent } from './tarjeta-pelicula.component';

describe('TarjetaPeliculaComponent', () => {
  let component: TarjetaPeliculaComponent;
  let fixture: ComponentFixture<TarjetaPeliculaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TarjetaPeliculaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TarjetaPeliculaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
