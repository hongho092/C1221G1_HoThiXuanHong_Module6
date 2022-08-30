import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { HeaderComponent } from './component/header/header.component';
import { FooterComponent } from './component/footer/footer.component';
import { ListComponent } from './component/book/list/list.component';
import { LoginComponent } from './component/login/login.component';
import { AppRoutingModule } from './app-routing.module';
import {RouterModule} from '@angular/router';
import { DetailComponent } from './component/book/detail/detail.component';
import {HttpClientModule} from '@angular/common/http';
import { CartListComponent } from './component/cart/cart-list/cart-list.component';
import {ReactiveFormsModule} from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    ListComponent,
    LoginComponent,
    DetailComponent,
    CartListComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ReactiveFormsModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
