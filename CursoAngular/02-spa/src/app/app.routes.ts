import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { AboutComponent } from "./components/about/about.component";
import { HeroesComponent } from './components/heroes/heroes.component';

const routes: Routes = [
    { path: 'home', component: HomeComponent },
    {path: 'about', component: AboutComponent},
    {path: 'heroes', component: HeroesComponent},
    { path: '**', component: HomeComponent},
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})
export class AppRoutingModule {}
