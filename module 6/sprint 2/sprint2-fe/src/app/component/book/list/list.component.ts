import { Component, OnInit } from '@angular/core';
import {BookService} from '../../../service/book.service';
import {Book} from '../../../model/book';
import {CartService} from '../../../service/cart.service';

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.css']
})
export class ListComponent implements OnInit {

  books: Book[] = [];
  p = 1;

  constructor(private bookService: BookService,
              private cartService: CartService) { }

  ngOnInit(): void {
    this.bookService.getAll().subscribe(books => {
      this.books = books;
      console.log(this.books);
    });
  }

  addToCart(book: Book, number: number) {
    this.cartService.addToCart(book, number);
  }
}
