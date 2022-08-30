import { Component, OnInit } from '@angular/core';
import {Book} from '../../../model/book';
import {CartDetail} from '../../../model/cart-detail';
import {CartService} from '../../../service/cart.service';

@Component({
  selector: 'app-cart-list',
  templateUrl: './cart-list.component.html',
  styleUrls: ['./cart-list.component.css']
})
export class CartListComponent implements OnInit {

  cartDetails: CartDetail[] = [];
  totalMoney: number = 0;

  constructor(private cartService: CartService) { }

  ngOnInit(): void {
    this.cartDetails = this.cartService.getCart();
    for (let i = 0; i < this.cartDetails.length; i++) {
      // @ts-ignore
      this.totalMoney = this.totalMoney + (this.cartDetails[i].book.price * this.cartDetails[i].cartDetailQuantity);
    }
  }

  reduce(book: Book) {
    this.cartService.addToCart(book, -1);
    this.totalMoney = 0;
    this.ngOnInit();
  }

  increase(book: Book) {
    this.cartService.addToCart(book, 1);
    this.totalMoney = 0;
    this.ngOnInit();
  }


}
