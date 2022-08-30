import { Injectable } from '@angular/core';
import {environment} from '../../environments/environment';
import {HttpClient} from '@angular/common/http';
import {Book} from '../model/book';
import {CartDetail} from '../model/cart-detail';

const API_URL = `${environment.apiUrl}`;

@Injectable({
  providedIn: 'root'
})
export class CartService {

  constructor(private http: HttpClient) { }

  addToCart(book: Book, quantity: number) {
    let cartDetails: CartDetail[] = [];
    if (localStorage.getItem('cart')) {
      cartDetails = JSON.parse(localStorage.getItem('cart'));
    }
    let exists = false;

    cartDetails.forEach(item => {
      if (item.book.id === book.id) {
        exists = true;
        if (quantity < 1 && item.cartDetailQuantity === 1) {
          item.cartDetailQuantity = 1;
        } else {
          item.cartDetailQuantity += quantity;
        }
      }
    });

    if (!exists && quantity > 0) {
      const cartDetail = {} as CartDetail;
      cartDetail.cartDetailQuantity = quantity;
      cartDetail.book = book;
      cartDetails.push(cartDetail);
    }
    localStorage.setItem('cart', JSON.stringify(cartDetails));
    // localStorage.removeItem('cart');
    console.log(localStorage.getItem('cart'));
  }

  getCart(): CartDetail[] {
    return JSON.parse(localStorage.getItem('cart'));
  }
}
