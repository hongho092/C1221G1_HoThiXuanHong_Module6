import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ListComponent} from './tour/list/list.component';
import {CreateComponent} from './tour/create/create.component';
import {ListCountComponent} from './tour/list-count/list-count.component';


const routes: Routes = [
  { path: '', component: ListComponent},
  { path: 'create', component: CreateComponent},
  { path: 'listCount', component: ListCountComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
