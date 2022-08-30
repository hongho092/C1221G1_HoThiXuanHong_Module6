import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ListComponent} from './component/book/list/list.component';
import {LoginComponent} from './component/login/login.component';
import {DetailComponent} from './component/book/detail/detail.component';
import {CartListComponent} from './component/cart/cart-list/cart-list.component';


const routes: Routes = [
  { path: '', component: ListComponent},
  { path: 'login', component: LoginComponent},
  { path: 'cart', component: CartListComponent},
  { path: 'book/detail/:id/:nameAuthor', component: DetailComponent},
  // { path: 'edit/:id', component: EditComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
